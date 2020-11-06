import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';

class BoutiqueState implements Cloneable<BoutiqueState> {

  int sexType = 1;
  List<SubscribeEntity> boutiques = [];

  @override
  BoutiqueState clone() {
    return BoutiqueState()
      ..sexType = sexType
      ..boutiques = boutiques
    ;
  }
}

BoutiqueState initState(Map<String, dynamic> args) {
  return BoutiqueState();
}
