import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<DownloadState> buildEffect() {
  return combineEffects(<Object, Effect<DownloadState>>{
    DownloadAction.action: _onAction,
  });
}

void _onAction(Action action, Context<DownloadState> ctx) {
}
