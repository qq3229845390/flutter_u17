import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/views/comic_detail/chapter_component/component.dart';
import 'package:flutter_u17/views/comic_detail/comment_component/component.dart';
import 'package:flutter_u17/views/comic_detail/detail_component/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ComicDetailPage extends Page<ComicDetailState, Map<String, dynamic>> with SingleTickerProviderMixin {
  ComicDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ComicDetailState>(
                adapter: null,
                slots: <String, Dependent<ComicDetailState>>{
                  'detail': DetailConnector() + DetailComponent(),
                  'chapter': ChapterConnector() + ChapterComponent(),
                  'comment': CommentConnector() + CommentComponent(),
                }),
            middleware: <Middleware<ComicDetailState>>[
            ],);

}
