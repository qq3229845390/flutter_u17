import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/common/pages.dart';
import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:flutter_u17/models/comment_entity.dart';
import 'package:flutter_u17/models/guess_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:flutter_u17/views/comic_detail/chapter_component/action.dart';
import 'package:flutter_u17/views/comic_detail/comment_component/action.dart';
import 'package:flutter_u17/views/comic_detail/detail_component/action.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<ComicDetailState> buildEffect() {
  return combineEffects(<Object, Effect<ComicDetailState>>{
    ComicDetailAction.action: _onAction,
    Lifecycle.initState: _init,
    ComicDetailAction.loadComment: _loadComment,
    ComicDetailAction.onOpenComicDetailPage: _onOpenComicDetailPage,
  });
}

void _onAction(Action action, Context<ComicDetailState> ctx) {
}

void _init(Action action, Context<ComicDetailState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: 3, vsync: tickerProvider);

  HttpManager.instance.get(Api.detailStatic,
    params: {'comicid': ctx.state.comicid},
    success: (data) {
      if (data['code'] == 1 && data['data']['stateCode'] == 1) {
        ComicDetailStaticEntity entity = ComicDetailStaticEntity().fromJson(data['data']['returnData']);
        ctx.dispatch(ComicDetailActionCreator.initData(entity));
        ctx.dispatch(DetailActionCreator.initData(entity));
        ctx.dispatch(ChapterActionCreator.initData(entity.chapterList));
        ctx.dispatch(ChapterActionCreator.initLastUpdateTime(entity.comic.lastUpdateTime));
        ctx.dispatch(ComicDetailActionCreator.loadComment(ctx.state.page));
      } else {
        Fluttertoast.showToast(msg: '请求失败');
      }
    }
  );

  HttpManager.instance.get(Api.detailRealtime,
      params: {'comicid': ctx.state.comicid},
      success: (data) {
        if (data['code'] == 1 && data['data']['stateCode'] == 1) {
          ComicDetailRealtimeEntity entity = ComicDetailRealtimeEntity().fromJson(data['data']['returnData']);
          ctx.dispatch(ComicDetailActionCreator.initDataRealtime(entity));
          ctx.dispatch(DetailActionCreator.initDataRealtime(entity));
        } else {
          Fluttertoast.showToast(msg: '请求失败');
        }
      }
  );

  HttpManager.instance.get(Api.guessLike,
      success: (data) {
        if (data['code'] == 1 && data['data']['stateCode'] == 1) {
          List comics = data['data']['returnData']['comics'];
          List<GuessEntity> guessList = [];
          comics.forEach((element) {
            GuessEntity entity = GuessEntity().fromJson(element);
            guessList.add(entity);
          });
          ctx.dispatch(DetailActionCreator.initGuess(guessList));
        } else {
          Fluttertoast.showToast(msg: '请求失败');
        }
      }
  );
}

void _loadComment(Action action, Context<ComicDetailState> ctx) {
  // 请求评论列表
  HttpManager.instance.get(Api.commentList,
      params: {
        'object_id': ctx.state.staticEntity.comic.comicId,
        'thread_id': ctx.state.staticEntity.comic.threadId,
        'page': action.payload
      },
      success: (data) {
        if (data['code'] == 1 && data['data']['stateCode'] == 1) {
          CommentEntity entity = CommentEntity().fromJson(
              data['data']['returnData']);
          ctx.dispatch(CommentActionCreator.updateComment(entity));
        } else {
          Fluttertoast.showToast(msg: '请求失败');
        }
      }
  );
}
void _onOpenComicDetailPage(Action action, Context<ComicDetailState> ctx) {
  Navigator.of(ctx.context).pushNamed(Pages.COMICDETAIL, arguments: {'comicid': action.payload});
}