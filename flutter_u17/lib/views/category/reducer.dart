import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CategoryState> buildReducer() {
  return asReducer(
    <Object, Reducer<CategoryState>>{
      CategoryAction.action: _onAction,
      CategoryAction.initData: _initData,
    },
  );
}

CategoryState _onAction(CategoryState state, Action action) {
  final CategoryState newState = state.clone();
  return newState;
}

CategoryState _initData(CategoryState state, Action action) {
  return state.clone()..categorys = action.payload;
}