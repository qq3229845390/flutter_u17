import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TabbarState> buildReducer() {
  return asReducer(
    <Object, Reducer<TabbarState>>{
      TabbarAction.action: _onAction,
      TabbarAction.switchPage: _switchPage,
    },
  );
}

TabbarState _onAction(TabbarState state, Action action) {
  final TabbarState newState = state.clone();
  return newState;
}

TabbarState _switchPage(TabbarState state, Action action) {
  return state.clone()..currentIndex = action.payload;
}
