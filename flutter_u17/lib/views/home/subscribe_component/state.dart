import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';

class SubscribeState implements Cloneable<SubscribeState> {

  List<SubscribeEntity> subscribes = [];

  @override
  SubscribeState clone() {
    return SubscribeState()
      ..subscribes = subscribes
    ;
  }
}

SubscribeState initState(Map<String, dynamic> args) {
  return SubscribeState();
}
