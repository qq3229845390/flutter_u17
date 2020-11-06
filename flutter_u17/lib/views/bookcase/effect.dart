import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<BookcaseState> buildEffect() {
  return combineEffects(<Object, Effect<BookcaseState>>{
    BookcaseAction.action: _onAction,
  });
}

void _onAction(Action action, Context<BookcaseState> ctx) {
}
