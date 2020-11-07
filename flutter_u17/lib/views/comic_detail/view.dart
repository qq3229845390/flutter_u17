import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_u17/common/constants.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    ComicDetailState state, Dispatch dispatch, ViewService viewService) {

  Widget head = state.staticEntity==null?CupertinoActivityIndicator():
  Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.only(top: ScreenUtil().statusBarHeight+36),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(5)
          ),
          child: CachedNetworkImage(
            imageUrl: state.staticEntity.comic.cover,
            placeholder: (context, url) => Image(
                fit: BoxFit.fill,
                image: AssetImage(
                    '${Constants.AssetImage('normal_placeholder_h')}')),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(state.staticEntity.comic.name??'', style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Text(state.staticEntity.comic.author.name??'', style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                      ),),
                    ),
                    Text.rich(TextSpan(
                        children: [
                          TextSpan(text: '点击', style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                          )),
                          TextSpan(text: '1345', style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16
                          )),
                          TextSpan(text: '万 收藏', style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                          )),
                          TextSpan(text: '268340', style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16
                          )),
                        ]
                    ))
                  ],
                ),
              ),
              Row(
                children: state.staticEntity.comic.classifyTags.map((e) {
                  return Container(
                    width: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    margin: EdgeInsets.only(right: 10),
                    child: Center(
                      child: Text(e.name, style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        )
      ],
    ),
  );

  return Scaffold(
    body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: head,
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
