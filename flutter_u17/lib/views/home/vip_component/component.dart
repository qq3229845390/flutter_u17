import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class VipComponent extends Component<VipState> {
  VipComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<VipState>(
                adapter: null,
                slots: <String, Dependent<VipState>>{
                }),);
}
