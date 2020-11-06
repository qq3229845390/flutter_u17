import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/rank_entity.dart';

//TODO replace with your own action
enum RankAction { action,

  initData,
}

class RankActionCreator {
  static Action onAction() {
    return const Action(RankAction.action);
  }
  static Action initData(List<RankEntity> ranks) {
    return Action(RankAction.initData, payload: ranks);
  }
}
