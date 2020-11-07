import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DownloadAction { action }

class DownloadActionCreator {
  static Action onAction() {
    return const Action(DownloadAction.action);
  }
}
