import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<BookState> buildEffect() {
  return combineEffects(<Object, Effect<BookState>>{
    BookAction.action: _onAction,
  });
}

void _onAction(Action action, Context<BookState> ctx) {
}
