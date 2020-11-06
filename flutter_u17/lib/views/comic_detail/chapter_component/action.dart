import 'package:fish_redux/fish_redux.dart';

import '../../../models/comic_detail_static_entity.dart';

//TODO replace with your own action
enum ChapterAction { action,
  initData,
}

class ChapterActionCreator {
  static Action onAction() {
    return const Action(ChapterAction.action);
  }
  static Action initData(List<ComicDetailStaticChapterList> list) {
    return Action(ChapterAction.initData, payload: list);
  }
}
