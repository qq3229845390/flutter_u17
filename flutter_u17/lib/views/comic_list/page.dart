import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ComicListPage extends Page<ComicListState, Map<String, dynamic>> {
  ComicListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ComicListState>(
                adapter: null,
                slots: <String, Dependent<ComicListState>>{
                }),
            middleware: <Middleware<ComicListState>>[
            ],);

}
