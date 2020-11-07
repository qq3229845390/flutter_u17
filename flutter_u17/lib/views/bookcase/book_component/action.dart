import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BookAction { action }

class BookActionCreator {
  static Action onAction() {
    return const Action(BookAction.action);
  }
}
