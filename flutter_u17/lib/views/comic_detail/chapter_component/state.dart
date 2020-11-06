import 'package:fish_redux/fish_redux.dart';

import '../../../models/comic_detail_static_entity.dart';

class ChapterState implements Cloneable<ChapterState> {

  List<ComicDetailStaticChapterList> chapterList = [];

  @override
  ChapterState clone() {
    return ChapterState()
      ..chapterList = chapterList
    ;
  }
}

ChapterState initState(Map<String, dynamic> args) {
  return ChapterState();
}
