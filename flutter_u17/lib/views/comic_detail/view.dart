import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ComicDetailState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
    body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: Container(
              color: Colors.red,
            )
          ),
          SliverPersistentHeader(
            pinned: true,
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
          ),
          // SliverOverlapAbsorber(
          //   handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          //   sliver: SliverAppBar(
          //     pinned: true,
          //     expandedHeight: 200,
          //     flexibleSpace: Container(
          //       color: Colors.red,
          //     ),
          //     bottom: PreferredSize(
          //       preferredSize: Size(double.infinity, 50),
          //       child: Container(
          //         color: Colors.white,
          //         child: Column(
          //           children: [
          //             TabBar(
          //                 labelColor: Colors.green,
          //                 indicatorColor: Colors.green,
          //                 unselectedLabelColor: Color(0xff333333),
          //                 controller: state.tabController,
          //                 onTap: (index) {},
          //                 indicatorSize: TabBarIndicatorSize.label,
          //                 tabs: [
          //                   Tab(text: '详情',),
          //                   Tab(text: '目录',),
          //                   Tab(text: '评论',),
          //                 ]),
          //             Container(
          //               height: 1,
          //               color: Colors.grey,
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ];
      },
      body: SafeArea(
        top: false,
        child: TabBarView(
          controller: state.tabController,
          children: [
            viewService.buildComponent('detail'),
            viewService.buildComponent('chapter'),
            viewService.buildComponent('comment'),
          ],
        ),
      ),
    ),
  );


  return Scaffold(
    body: SafeArea(
      top: false,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            collapsedHeight: 200,
            flexibleSpace: Container(
              color: Colors.red,
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
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
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: state.tabController,
              children: [
                viewService.buildComponent('detail'),
                viewService.buildComponent('chapter'),
                viewService.buildComponent('comment'),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

class TabbarPersistenHeader extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  TabbarPersistenHeader({@required this.tabBar});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          tabBar,
          Container(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
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
