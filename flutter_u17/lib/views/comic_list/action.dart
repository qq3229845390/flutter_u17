import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comic_list_entity.dart';

//TODO replace with your own action
enum ComicListAction { action,
  onLoadData,
  loadData,
  onCellClick,
  onOpenComicDetailPage
}

class ComicListActionCreator {
  static Action onAction() {
    return const Action(ComicListAction.action);
  }
  static Action onLoadData(int page) {
    return Action(ComicListAction.onLoadData, payload: page);
  }
  static Action loadData(int page, List<ComicListEntity> comics) {
    return Action(ComicListAction.loadData, payload: {
      'page': page,
      'comics': comics
    });
  }
  static Action onCellClick(int comicId) {
    return Action(ComicListAction.onCellClick, payload: comicId);
  }
  static Action onOpenComicDetailPage(int comicid) {
    return Action(ComicListAction.onOpenComicDetailPage, payload: comicid);
  }
}
