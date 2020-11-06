import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BookcaseState> buildReducer() {
  return asReducer(
    <Object, Reducer<BookcaseState>>{
      BookcaseAction.action: _onAction,
    },
  );
}

BookcaseState _onAction(BookcaseState state, Action action) {
  final BookcaseState newState = state.clone();
  return newState;
}
