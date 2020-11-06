import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<BoutiqueState> buildEffect() {
  return combineEffects(<Object, Effect<BoutiqueState>>{
    BoutiqueAction.action: _onAction,
    Lifecycle.initState: _init,
    BoutiqueAction.onGetData: _onGetData,
  });
}

void _onAction(Action action, Context<BoutiqueState> ctx) {
}

void _init(Action action, Context<BoutiqueState> ctx) {
  _onGetData(action, ctx);
}

void _onGetData(Action action, Context<BoutiqueState> ctx) {
  HttpManager.instance.get(Api.boutiqueList,
      params: {'sexType': ctx.state.sexType},
      success: (data) {
        if (data['code'] == 1 && data['data']['stateCode'] == 1) {
          List comicList = data['data']['returnData']['comicLists'];
          List<SubscribeEntity> boutiques = [];
          comicList.forEach((element) {
            SubscribeEntity entity = SubscribeEntity().fromJson(element);
            boutiques.add(entity);
          });
          ctx.dispatch(BoutiqueActionCreator.initData(boutiques));
        } else {
          Fluttertoast.showToast(msg: '请求失败');
        }
      }
  );
}
