import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ComicDetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<ComicDetailState>>{
      ComicDetailAction.action: _onAction,
      ComicDetailAction.initData: _initData,
      ComicDetailAction.initDataRealtime: _initDataRealtime,
    },
  );
}

ComicDetailState _onAction(ComicDetailState state, Action action) {
  final ComicDetailState newState = state.clone();
  return newState;
}

ComicDetailState _initData(ComicDetailState state, Action action) {
  return state.clone()..staticEntity = action.payload;
}

ComicDetailState _initDataRealtime(ComicDetailState state, Action action) {
  return state.clone()..realtimeEntity = action.payload;
}
