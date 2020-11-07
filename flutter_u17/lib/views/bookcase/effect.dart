import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<BookcaseState> buildEffect() {
  return combineEffects(<Object, Effect<BookcaseState>>{
    BookcaseAction.action: _onAction,
    Lifecycle.initState: _init,
  });
}

void _onAction(Action action, Context<BookcaseState> ctx) {
}

void _init(Action action, Context<BookcaseState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController = TabController(length: 3, vsync: tickerProvider);
}
