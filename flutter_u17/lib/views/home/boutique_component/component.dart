import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BoutiqueComponent extends Component<BoutiqueState> {
  BoutiqueComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BoutiqueState>(
                adapter: null,
                slots: <String, Dependent<BoutiqueState>>{
                }),);

}
