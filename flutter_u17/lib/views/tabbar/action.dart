import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TabbarAction { action,
  switchPage,
}

class TabbarActionCreator {
  static Action onAction() {
    return const Action(TabbarAction.action);
  }
  static Action switchPage(int index) {
    return Action(TabbarAction.switchPage, payload: index);
  }
}
