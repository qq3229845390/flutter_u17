import 'package:fish_redux/fish_redux.dart';

import '../../../models/comic_detail_static_entity.dart';

//TODO replace with your own action
enum ChapterAction { action,
  initData,
  initDataRealtime,
  initLastUpdateTime,
  updateOrder,
}

class ChapterActionCreator {
  static Action onAction() {
    return const Action(ChapterAction.action);
  }
  static Action initData(List<ComicDetailStaticChapterList> list) {
    return Action(ChapterAction.initData, payload: list);
  }
  static Action initLastUpdateTime(int lastUpdateTime) {
    return Action(ChapterAction.initLastUpdateTime, payload: lastUpdateTime);
  }
  static Action updateOrder() {
    return const Action(ChapterAction.updateOrder);
  }
}
