import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CollectComponent extends Component<CollectState> {
  CollectComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CollectState>(
                adapter: null,
                slots: <String, Dependent<CollectState>>{
                }),);

}
