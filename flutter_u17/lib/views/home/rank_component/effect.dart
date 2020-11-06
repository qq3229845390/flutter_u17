import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/models/rank_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<RankState> buildEffect() {
  return combineEffects(<Object, Effect<RankState>>{
    RankAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _onAction(Action action, Context<RankState> ctx) {
}

void _init(Action action, Context<RankState> ctx) {
  HttpManager.instance.get(Api.rankList,
    success: (data) {
      if (data['code'] == 1 && data['data']['stateCode'] == 1) {
        List rankingList = data['data']['returnData']['rankinglist'];
        List<RankEntity> ranks = [];
        rankingList.forEach((element) {
          RankEntity entity = RankEntity().fromJson(element);
          ranks.add(entity);
        });
        ctx.dispatch(RankActionCreator.initData(ranks));
      } else {
        Fluttertoast.showToast(msg: '请求失败');
      }
    }
  );
}
