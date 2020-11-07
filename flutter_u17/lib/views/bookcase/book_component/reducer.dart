import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BookState> buildReducer() {
  return asReducer(
    <Object, Reducer<BookState>>{
      BookAction.action: _onAction,
    },
  );
}

BookState _onAction(BookState state, Action action) {
  final BookState newState = state.clone();
  return newState;
}
