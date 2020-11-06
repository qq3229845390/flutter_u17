import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';

//TODO replace with your own action
enum ComicDetailAction { action,
  initData,
}

class ComicDetailActionCreator {
  static Action onAction() {
    return const Action(ComicDetailAction.action);
  }
  static Action initData(ComicDetailStaticEntity entity) {
    return Action(ComicDetailAction.initData, payload: entity);
  }
}
