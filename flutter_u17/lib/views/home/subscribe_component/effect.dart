import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<SubscribeState> buildEffect() {
  return combineEffects(<Object, Effect<SubscribeState>>{
    SubscribeAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _onAction(Action action, Context<SubscribeState> ctx) {
}

void _init(Action action, Context<SubscribeState> ctx) {
  HttpManager.instance.get(Api.subscribeList,
    success: (data) {
      if (data['code'] == 1 && data['data']['stateCode'] == 1) {
        List subscribeList = data['data']['returnData']['newSubscribeList'];
        List<SubscribeEntity> subscribes = [];
        subscribeList.forEach((element) {
          SubscribeEntity entity = SubscribeEntity().fromJson(element);
          subscribes.add(entity);
        });
        ctx.dispatch(SubscribeActionCreator.initData(subscribes));
      } else {
        Fluttertoast.showToast(msg: '请求失败');
      }
    }
  );
}
