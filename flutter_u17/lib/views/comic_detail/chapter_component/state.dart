import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';


class ChapterState implements Cloneable<ChapterState> {

  List<ComicDetailStaticChapterList> chapterList = [];
  List<ComicDetailRealtimeChapterList> realtimeChapterList = [];
  int lastUpdateTime = 0;
  bool isOrder = true;

  @override
  ChapterState clone() {
    return ChapterState()
      ..lastUpdateTime = lastUpdateTime
      ..chapterList = chapterList
      ..realtimeChapterList = realtimeChapterList
      ..isOrder = isOrder
    ;
  }
}

ChapterState initState(Map<String, dynamic> args) {
  return ChapterState();
}
