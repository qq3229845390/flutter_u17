import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';

//TODO replace with your own action
enum ComicDetailAction { action,
  initData,
  loadComment,
  onOpenComicDetailPage,

  initDataRealtime,
}

class ComicDetailActionCreator {
  static Action onAction() {
    return const Action(ComicDetailAction.action);
  }
  static Action initData(ComicDetailStaticEntity entity) {
    return Action(ComicDetailAction.initData, payload: entity);
  }
  static Action loadComment(int page) {
    return Action(ComicDetailAction.loadComment, payload: page);
  }
  static Action onOpenComicDetailPage(String comicId) {
    return Action(ComicDetailAction.onOpenComicDetailPage, payload: comicId);
  }
  static Action initDataRealtime(ComicDetailRealtimeEntity entity) {
    return Action(ComicDetailAction.initDataRealtime, payload: entity);
  }
}
