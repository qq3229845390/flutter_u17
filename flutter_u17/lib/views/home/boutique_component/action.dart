import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';

//TODO replace with your own action
enum BoutiqueAction { action,
  onGetData,
  switchSex,
  initData,
}

class BoutiqueActionCreator {
  static Action onAction() {
    return const Action(BoutiqueAction.action);
  }
  static Action onGetData() {
    return const Action(BoutiqueAction.onGetData);
  }
  static Action switchSex(sexType) {
    return Action(BoutiqueAction.switchSex, payload: sexType);
  }
  static Action initData(List<SubscribeEntity> boutiques) {
    return Action(BoutiqueAction.initData, payload: boutiques);
  }
}
