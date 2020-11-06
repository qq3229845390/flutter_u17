import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/common/pages.dart';
import 'package:flutter_u17/models/comic_list_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<ComicListState> buildEffect() {
  return combineEffects(<Object, Effect<ComicListState>>{
    ComicListAction.action: _onAction,
    Lifecycle.initState: _init,
    ComicListAction.onLoadData: _onLoadData,
    ComicListAction.onCellClick: _onCellClick,
  });
}

void _onAction(Action action, Context<ComicListState> ctx) {
}

void _init(Action action, Context<ComicListState> ctx) {
  ctx.dispatch(ComicListActionCreator.onLoadData(1));
}

void _onLoadData(Action action, Context<ComicListState> ctx) {
  println(action.payload);
  HttpManager.instance.get(Api.comicList,
    params: {
      'argCon': ctx.state.argCon,
      'argName': ctx.state.argName,
      'argValue': ctx.state.argValue,
      'page': action.payload
    },
    success: (data) {
      if (data['code'] == 1 && data['data']['stateCode'] == 1) {
        List comicList = data['data']['returnData']['comics'];
        List<ComicListEntity> comics = [];
        comicList.forEach((element) {
          ComicListEntity entity = ComicListEntity().fromJson(element);
          comics.add(entity);
        });
        ctx.dispatch(ComicListActionCreator.loadData(action.payload, comics));
      } else {
        Fluttertoast.showToast(msg: '请求失败');
      }
    }
  );
}
void _onCellClick(Action action, Context<ComicListState> ctx) {
  Navigator.of(ctx.context).pushNamed(Pages.COMICDETAIL, arguments: {'comicid': action.payload});
}
