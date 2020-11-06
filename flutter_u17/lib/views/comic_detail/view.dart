import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ComicDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          collapsedHeight: 200,
          flexibleSpace: Container(
            color: Colors.red,
          ),
        ),
        SliverPersistentHeader(
          delegate: TabbarPersistenHeader(
            tabBar: TabBar(
              labelColor: Colors.green,
                indicatorColor: Colors.green,
                unselectedLabelColor: Color(0xff333333),
                controller: state.tabController,
                onTap: (index) {},
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: '详情',),
                  Tab(text: '目录',),
                  Tab(text: '评论',),
                ]),
          ),
        )
      ],
    ),
  );
}

class TabbarPersistenHeader extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  TabbarPersistenHeader({@required this.tabBar});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      children: [
        tabBar,
        Container(
          height: 1,
          color: Colors.grey,
        )
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => this.tabBar.preferredSize.height + 1;

  @override
  // TODO: implement minExtent
  double get minExtent => this.tabBar.preferredSize.height + 1;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
