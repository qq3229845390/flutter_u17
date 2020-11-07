import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DownloadComponent extends Component<DownloadState> {
  DownloadComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<DownloadState>(
                adapter: null,
                slots: <String, Dependent<DownloadState>>{
                }),);

}
