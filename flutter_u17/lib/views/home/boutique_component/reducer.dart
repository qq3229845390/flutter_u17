import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BoutiqueState> buildReducer() {
  return asReducer(
    <Object, Reducer<BoutiqueState>>{
      BoutiqueAction.action: _onAction,
      BoutiqueAction.switchSex: _switchSex,
      BoutiqueAction.initData: _initData,
    },
  );
}

BoutiqueState _onAction(BoutiqueState state, Action action) {
  final BoutiqueState newState = state.clone();
  return newState;
}
BoutiqueState _switchSex(BoutiqueState state, Action action) {
  return state.clone()..sexType = action.payload;
}
BoutiqueState _initData(BoutiqueState state, Action action) {
  return state.clone()..boutiques = action.payload;
}
