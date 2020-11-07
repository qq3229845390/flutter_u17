import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BookComponent extends Component<BookState> {
  BookComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BookState>(
                adapter: null,
                slots: <String, Dependent<BookState>>{
                }),);

}
