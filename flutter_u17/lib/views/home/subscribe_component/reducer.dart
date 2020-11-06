import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SubscribeState> buildReducer() {
  return asReducer(
    <Object, Reducer<SubscribeState>>{
      SubscribeAction.action: _onAction,
      SubscribeAction.initData: _initData,
    },
  );
}

SubscribeState _onAction(SubscribeState state, Action action) {
  final SubscribeState newState = state.clone();
  return newState;
}

SubscribeState _initData(SubscribeState state, Action action) {
  return state.clone()..subscribes = action.payload;
}
