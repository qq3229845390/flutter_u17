import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DownloadState> buildReducer() {
  return asReducer(
    <Object, Reducer<DownloadState>>{
      DownloadAction.action: _onAction,
    },
  );
}

DownloadState _onAction(DownloadState state, Action action) {
  final DownloadState newState = state.clone();
  return newState;
}
