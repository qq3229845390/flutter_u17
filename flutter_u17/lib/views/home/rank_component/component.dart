import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class RankComponent extends Component<RankState> {
  RankComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<RankState>(
                adapter: null,
                slots: <String, Dependent<RankState>>{
                }),);

}
