import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAction { action,
  switchPage,
  onOpenComicListPage,
  onOpenComicDetailPage,
}

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action);
  }
  static Action switchPage(index) {
    return Action(HomeAction.switchPage, payload: index);
  }
  static Action onOpenComicListPage(String title, int argCon, String argName, String argValue) {
    return Action(HomeAction.onOpenComicListPage, payload: {
      'title': title,
      'argCon': argCon,
      'argName': argName,
      'argValue': argValue
    });
  }
  static Action onOpenComicDetailPage(int comicid) {
    return Action(HomeAction.onOpenComicDetailPage, payload: comicid);
  }
}
