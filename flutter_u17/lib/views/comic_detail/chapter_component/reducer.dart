import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ChapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<ChapterState>>{
      ChapterAction.action: _onAction,
      ChapterAction.initData: _initData,
    },
  );
}

ChapterState _onAction(ChapterState state, Action action) {
  final ChapterState newState = state.clone();
  return newState;
}

ChapterState _initData(ChapterState state, Action action) {
  return state.clone()..chapterList = action.payload;
}
