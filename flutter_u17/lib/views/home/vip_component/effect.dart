import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<VipState> buildEffect() {
  return combineEffects(<Object, Effect<VipState>>{
    VipAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _onAction(Action action, Context<VipState> ctx) {
}

void _init(Action action, Context<VipState> ctx) {
  HttpManager.instance.get(Api.vipList, success: (data) {
    if (data['code'] == 1 && data['data']['stateCode'] == 1) {
      List vipList = data['data']['returnData']['newVipList'];
      List<SubscribeEntity> vips = [];
      vipList.forEach((element) {
        SubscribeEntity entity = SubscribeEntity().fromJson(element);
        vips.add(entity);
      });

      println(vips.length);
      ctx.dispatch(VipActionCreator.initData(vips));
    } else {
      Fluttertoast.showToast(msg: '请求失败');
    }
  });
}
