import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ChapterComponent extends Component<ChapterState> {
  ChapterComponent()
      : super(
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ChapterState>(
                adapter: null,
                slots: <String, Dependent<ChapterState>>{
                }),);

}
