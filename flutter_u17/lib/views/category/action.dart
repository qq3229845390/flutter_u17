import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/category_entity.dart';

//TODO replace with your own action
enum CategoryAction { action,
  initData,
  onOpenComicListPage,
}

class CategoryActionCreator {
  static Action onAction() {
    return const Action(CategoryAction.action);
  }
  static Action initData(List<CategoryEntity> ranks) {
    return Action(CategoryAction.initData, payload: ranks);
  }
  static Action onOpenComicListPage(String title, int argCon, String argName, int argValue) {
    return Action(CategoryAction.onOpenComicListPage, payload: {
      'title': title,
      'argCon': argCon,
      'argName': argName,
      'argValue': argValue
    });
  }
}
