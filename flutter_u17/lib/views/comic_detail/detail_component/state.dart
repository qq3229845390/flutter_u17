import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';

class DetailState implements Cloneable<DetailState> {

  ComicDetailStaticComic comic;
  List<ComicDetailStaticOtherWork> otherWorks;

  @override
  DetailState clone() {
    return DetailState()
      ..comic = comic
      ..otherWorks = otherWorks
    ;
  }
}

DetailState initState(Map<String, dynamic> args) {
  return DetailState();
}
