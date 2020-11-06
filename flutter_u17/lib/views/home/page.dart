import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/views/home/boutique_component/component.dart';
import 'package:flutter_u17/views/home/rank_component/component.dart';
import 'package:flutter_u17/views/home/subscribe_component/component.dart';
import 'package:flutter_u17/views/home/vip_component/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomePage extends Page<HomeState, Map<String, dynamic>> with SingleTickerProviderMixin {
  HomePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeState>(
                adapter: null,
                slots: <String, Dependent<HomeState>>{
                  'boutique': BoutiqueConnector() + BoutiqueComponent(),
                  'rank': RankConnector() + RankComponent(),
                  'subscribe': SubscribeConnector() + SubscribeComponent(),
                  'vip': VipConnector() + VipComponent(),
                }),
            middleware: <Middleware<HomeState>>[
            ],);

}
