import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/rank_entity.dart';

class RankState implements Cloneable<RankState> {

  List<RankEntity> ranks = [];

  @override
  RankState clone() {
    return RankState()
      ..ranks = ranks
    ;
  }
}

RankState initState(Map<String, dynamic> args) {
  return RankState();
}
