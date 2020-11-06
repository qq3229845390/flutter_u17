import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SubscribeComponent extends Component<SubscribeState> {
  SubscribeComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SubscribeState>(
                adapter: null,
                slots: <String, Dependent<SubscribeState>>{
                }),);

}
