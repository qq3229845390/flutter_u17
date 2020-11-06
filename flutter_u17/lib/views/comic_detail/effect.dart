import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<ComicDetailState> buildEffect() {
  return combineEffects(<Object, Effect<ComicDetailState>>{
    ComicDetailAction.action: _onAction,
    Lifecycle.initState: _init,
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
      } else {
        Fluttertoast.showToast(msg: '请求失败');
      }
    }
  );
}
