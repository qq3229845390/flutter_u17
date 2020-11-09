import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';

import 'action.dart';
import 'state.dart';

Reducer<DetailState> buildReducer() {
  return asReducer(
    <Object, Reducer<DetailState>>{
      DetailAction.action: _onAction,
      DetailAction.initData: _initData,
      DetailAction.initGuess: _initGuess,
      DetailAction.initDataRealtime: _initDataRealtime,
    },
  );
}

DetailState _onAction(DetailState state, Action action) {
  final DetailState newState = state.clone();
  return newState;
}

DetailState _initData(DetailState state, Action action) {
  ComicDetailStaticEntity entity = action.payload;
  final DetailState newState = state.clone()
    ..staticComic = entity.comic
    ..otherWorks = entity.otherWorks
  ;
  return newState;
}

DetailState _initGuess(DetailState state, Action action) {
  return state.clone()..guessList = action.payload;
}

DetailState _initDataRealtime(DetailState state, Action action) {
  ComicDetailRealtimeEntity entity = action.payload;
  final DetailState newState = state.clone()
    ..realtimeComic = entity.comic
  ;
  return newState;
}
