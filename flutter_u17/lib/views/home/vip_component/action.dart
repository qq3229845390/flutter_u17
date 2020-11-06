import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';

//TODO replace with your own action
enum VipAction { action,
  initData,
}

class VipActionCreator {
  static Action onAction() {
    return const Action(VipAction.action);
  }
  static Action initData(List<SubscribeEntity> vips) {
    return Action(VipAction.initData, payload: vips);
  }
}
