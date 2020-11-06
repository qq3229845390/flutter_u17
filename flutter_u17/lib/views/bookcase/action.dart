import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BookcaseAction { action }

class BookcaseActionCreator {
  static Action onAction() {
    return const Action(BookcaseAction.action);
  }
}
