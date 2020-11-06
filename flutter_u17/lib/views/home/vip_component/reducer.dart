import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<VipState> buildReducer() {
  return asReducer(
    <Object, Reducer<VipState>>{
      VipAction.action: _onAction,
      VipAction.initData: _initData,
    },
  );
}

VipState _onAction(VipState state, Action action) {
  final VipState newState = state.clone();
  return newState;
}

VipState _initData(VipState state, Action action) {
  return state.clone()..vips = action.payload;
}
