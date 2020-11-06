import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';

//TODO replace with your own action
enum SubscribeAction { action,
  initData,
}

class SubscribeActionCreator {
  static Action onAction() {
    return const Action(SubscribeAction.action);
  }
  static Action initData(List<SubscribeEntity> subscribes) {
    return Action(SubscribeAction.initData, payload: subscribes);
  }
}
