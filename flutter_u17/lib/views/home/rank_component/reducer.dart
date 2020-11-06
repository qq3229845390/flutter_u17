import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<RankState> buildReducer() {
  return asReducer(
    <Object, Reducer<RankState>>{
      RankAction.action: _onAction,
      RankAction.initData: _initData,
    },
  );
}

RankState _onAction(RankState state, Action action) {
  final RankState newState = state.clone();
  return newState;
}

RankState _initData(RankState state, Action action) {
  return state.clone()..ranks = action.payload;
}
