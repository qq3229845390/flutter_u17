import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ComicListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ComicListState>>{
      ComicListAction.action: _onAction,
      ComicListAction.loadData: _loadData,
    },
  );
}

ComicListState _onAction(ComicListState state, Action action) {
  final ComicListState newState = state.clone();
  return newState;
}
ComicListState _loadData(ComicListState state, Action action) {
  final ComicListState newState = state.clone()
    ..comics = action.payload['comics']
    ..page = action.payload['page']
  ;
  return newState;
}
