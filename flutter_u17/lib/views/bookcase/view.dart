import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/widget/keep_alive_widget.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    BookcaseState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: TabBar(controller: state.tabController,
          indicator: BoxDecoration(),
          tabs: [
        Tab(text: '收藏',),
        Tab(text: '书单',),
        Tab(text: '下载',),
      ]),
    ),
    body: TabBarView(controller: state.tabController, children: [
      KeepAliveWidget(child: viewService.buildComponent('collect'),),
      KeepAliveWidget(child: viewService.buildComponent('book'),),
      KeepAliveWidget(child: viewService.buildComponent('download'),),
    ]),
  );
}
