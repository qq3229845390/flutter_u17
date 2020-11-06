import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/views/home/boutique_component/state.dart';
import 'package:flutter_u17/views/home/rank_component/state.dart';
import 'package:flutter_u17/views/home/subscribe_component/state.dart';
import 'package:flutter_u17/views/home/vip_component/state.dart';

class HomeState implements Cloneable<HomeState> {

  List<Tab> items;
  int currentIndex;
  TabController controller;

  BoutiqueState boutiqueState;
  VipState vipState;
  SubscribeState subscribeState;
  RankState rankState;

  @override
  HomeState clone() {
    return HomeState()
      ..items = items
      ..currentIndex = currentIndex
      ..controller = controller
      ..boutiqueState = boutiqueState
      ..vipState = vipState
      ..subscribeState = subscribeState
      ..rankState = rankState
    ;
  }
}

HomeState initState(Map<String, dynamic> args) {
  List<Tab> items = [];
  items
    ..add(Tab(text: '推荐'))
    ..add(Tab(text: 'VIP'))
    ..add(Tab(text: '订阅'))
    ..add(Tab(text: '排行'));

  return HomeState()
    ..items = items
    ..currentIndex = 0
    ..boutiqueState = BoutiqueState()
    ..vipState = VipState()
    ..subscribeState = SubscribeState()
    ..rankState = RankState()
  ;
}

class BoutiqueConnector extends ConnOp<HomeState, BoutiqueState>
  with ReselectMixin<HomeState, BoutiqueState> {
  @override
  BoutiqueState computed(HomeState state) {
    return state.boutiqueState;
  }

  @override
  List factors(HomeState state) {
    return [state.boutiqueState];
  }

  @override
  void set(HomeState state, BoutiqueState subState) {
    state.boutiqueState = subState;
  }
}

class VipConnector extends ConnOp<HomeState, VipState>
    with ReselectMixin<HomeState, VipState> {
  @override
  VipState computed(HomeState state) {
    return state.vipState;
  }

  @override
  List factors(HomeState state) {
    return [state.vipState];
  }

  @override
  void set(HomeState state, VipState subState) {
    state.vipState = subState;
  }

}

class SubscribeConnector extends ConnOp<HomeState, SubscribeState>
    with ReselectMixin<HomeState, SubscribeState> {
  @override
  SubscribeState computed(HomeState state) {
    return state.subscribeState;
  }

  @override
  List factors(HomeState state) {
    return [state.subscribeState];
  }

  @override
  void set(HomeState state, SubscribeState subState) {
    state.subscribeState = subState;
  }

}

class RankConnector extends ConnOp<HomeState, RankState>
    with ReselectMixin<HomeState, RankState> {
  @override
  RankState computed(HomeState state) {
    return state.rankState;
  }

  @override
  List factors(HomeState state) {
    // TODO: implement factors
    return [state.rankState];
  }

  @override
  void set(HomeState state, RankState subState) {
    state.rankState = subState;
  }

}

