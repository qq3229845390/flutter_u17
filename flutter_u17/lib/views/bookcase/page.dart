import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/views/bookcase/book_component/component.dart';
import 'package:flutter_u17/views/bookcase/collect_component/component.dart';
import 'package:flutter_u17/views/bookcase/download_component/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'view.dart';
import 'state.dart';


class BookcasePage extends Page<BookcaseState, Map<String, dynamic>> with SingleTickerProviderMixin{
  BookcasePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BookcaseState>(
                adapter: null,
                slots: <String, Dependent<BookcaseState>>{
                  'collect': CollectConnector() + CollectComponent(),
                  'book': BooKConnector() + BookComponent(),
                  'download': DownloadConnector() + DownloadComponent(),
                }),
            middleware: <Middleware<BookcaseState>>[
            ],);

}
