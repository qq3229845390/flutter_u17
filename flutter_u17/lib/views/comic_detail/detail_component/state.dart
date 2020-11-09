import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:flutter_u17/models/guess_entity.dart';

class DetailState implements Cloneable<DetailState> {

  ComicDetailStaticComic staticComic = ComicDetailStaticComic();
  ComicDetailRealtimeComic realtimeComic = ComicDetailRealtimeComic();
  List<ComicDetailStaticOtherWork> otherWorks = [];
  List<GuessEntity> guessList = [];

  @override
  DetailState clone() {
    return DetailState()
      ..staticComic = staticComic
      ..realtimeComic = realtimeComic
      ..otherWorks = otherWorks
      ..guessList = guessList
    ;
  }
}

DetailState initState(Map<String, dynamic> args) {
  return DetailState();
}
