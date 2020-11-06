import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BookcasePage extends Page<BookcaseState, Map<String, dynamic>> {
  BookcasePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BookcaseState>(
                adapter: null,
                slots: <String, Dependent<BookcaseState>>{
                }),
            middleware: <Middleware<BookcaseState>>[
            ],);

}
