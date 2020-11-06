import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter/widgets.dart' hide Action;
import 'package:flutter_u17/common/api.dart';
import 'package:flutter_u17/common/pages.dart';
import 'package:flutter_u17/net/http_manager.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.action: _onAction,
    Lifecycle.initState: _init,
    HomeAction.onOpenComicListPage: _onOpenComicListPage,
    HomeAction.onOpenComicDetailPage: _onOpenComicDetailPage,
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}

void _init(Action action, Context<HomeState> ctx) {
  final TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.controller = TabController(length: ctx.state.items.length, vsync: tickerProvider);
}

void _onOpenComicListPage(Action action, Context<HomeState> ctx) {
   Navigator.of(ctx.context).pushNamed(Pages.COMICLIST, arguments: {
     'title': action.payload['title'],
     'argCon': action.payload['argCon'],
     'argName': action.payload['argName'],
     'argValue': action.payload['argValue']
   });
}
void _onOpenComicDetailPage(Action action, Context<HomeState> ctx) {
   Navigator.of(ctx.context).pushNamed(Pages.COMICDETAIL, arguments: {'comicid': action.payload});
}
