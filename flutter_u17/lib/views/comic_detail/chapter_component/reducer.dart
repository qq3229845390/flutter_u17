import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ChapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<ChapterState>>{
      ChapterAction.action: _onAction,
      ChapterAction.initData: _initData,
      ChapterAction.initDataRealtime: _initDataRealtime,
      ChapterAction.initLastUpdateTime: _initLastUpdateTime,
      ChapterAction.updateOrder: _updateOrder,
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

ChapterState _initDataRealtime(ChapterState state, Action action) {
  return state.clone()..realtimeChapterList = action.payload;
}

ChapterState _initLastUpdateTime(ChapterState state, Action action) {
  return state.clone()..lastUpdateTime = action.payload;
}

ChapterState _updateOrder(ChapterState state, Action action) {
  final ChapterState newState = state.clone()
    ..isOrder = !state.isOrder
    ..chapterList = state.chapterList.reversed.toList()
  ;
  return newState;
}
