import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/widget/keep_alive_widget.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      elevation: 0,
      title: TabBar(
        controller: state.controller,
        tabs: state.items,
        labelStyle: TextStyle(
          fontSize: 18
        ),
        indicator: BoxDecoration(),
        onTap: (index) => dispatch(HomeActionCreator.switchPage(index)),
      ),
    ),
    body: TabBarView(
      controller: state.controller,
      children: [
        KeepAliveWidget(child: viewService.buildComponent('boutique')),
        KeepAliveWidget(child: viewService.buildComponent('vip')),
        KeepAliveWidget(child: viewService.buildComponent('subscribe')),
        KeepAliveWidget(child: viewService.buildComponent('rank')),
      ],
    ),
  );
}
