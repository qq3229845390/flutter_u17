import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/common/pages.dart';
import 'package:flutter_u17/models/category_entity.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'action.dart';
import 'state.dart';

Effect<CategoryState> buildEffect() {
  return combineEffects(<Object, Effect<CategoryState>>{
    CategoryAction.action: _onAction,
    Lifecycle.initState: _init,
    CategoryAction.onOpenComicListPage: _onOpenComicListPage,
  });
}

void _onAction(Action action, Context<CategoryState> ctx) {
}

void _init(Action action, Context<CategoryState> ctx) {
  HttpManager.instance.get(Api.cateList,
    success: (data) {
      if (data['code'] == 1 && data['data']['stateCode'] == 1) {
        List categoryList = data['data']['returnData']['rankingList'];
        List<CategoryEntity> categorys = [];
        categoryList.forEach((element) {
          CategoryEntity entity = CategoryEntity().fromJson(element);
          categorys.add(entity);
        });
        ctx.dispatch(CategoryActionCreator.initData(categorys));
      } else {
        Fluttertoast.showToast(msg: '请求失败');
      }
    }
  );
}

void _onOpenComicListPage(Action action, Context<CategoryState> ctx) {
  Navigator.of(ctx.context).pushNamed(Pages.COMICLIST, arguments: {
    'title': action.payload['title'],
    'argCon': action.payload['argCon'],
    'argName': action.payload['argName'],
    'argValue': action.payload['argValue']
  });
}