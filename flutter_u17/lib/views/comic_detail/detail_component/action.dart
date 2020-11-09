import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:flutter_u17/models/guess_entity.dart';

//TODO replace with your own action
enum DetailAction { action,
  initData,
  initGuess,

  initDataRealtime,
}

class DetailActionCreator {
  static Action onAction() {
    return const Action(DetailAction.action);
  }
  static Action initData(ComicDetailStaticEntity entity) {
    return Action(DetailAction.initData, payload: entity);
  }
  static Action initGuess(List<GuessEntity> list) {
    return Action(DetailAction.initGuess, payload: list);
  }
  static Action initDataRealtime(ComicDetailRealtimeEntity entity) {
    return Action(DetailAction.initDataRealtime, payload: entity);
  }
}
