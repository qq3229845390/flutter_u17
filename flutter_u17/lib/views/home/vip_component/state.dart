import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';

class VipState implements Cloneable<VipState> {

  List<SubscribeEntity> vips = [];

  @override
  VipState clone() {
    return VipState()
      ..vips = vips
    ;
  }
}

VipState initState(Map<String, dynamic> args) {
  return VipState();
}
