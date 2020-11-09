import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_u17/common/constants.dart';
import 'package:flutter_u17/models/guess_entity.dart';
import 'package:flutter_u17/views/comic_detail/action.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    DetailState state, Dispatch dispatch, ViewService viewService) {
  if (state.staticComic == null) {
    return Center(
      child: CupertinoActivityIndicator(),
    );
  }

  Widget introduce = Container(
    color: Colors.white,
    padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '作品介绍',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Text(
          '   ${state.staticComic.description}',
          style: TextStyle(color: Colors.grey, fontSize: 14),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    ),
  );

  Widget other = state.otherWorks.length==0?Container():
  Container(
    color: Colors.white,
    margin: EdgeInsets.only(top: 10),
    height: 50,
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('其他作品'),
              Text(
                '${state.otherWorks.length}本',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        Icon(
          Icons.keyboard_arrow_right,
          color: Colors.grey,
        )
      ],
    ),
  );

  Widget ticket = Container(
    color: Colors.white,
    margin: EdgeInsets.only(top: 10),
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '本月月票',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            '${state.realtimeComic.totalTicket}',
            style: TextStyle(color: Colors.orange, fontSize: 15),
          ),
        ),
        Text(
          '|',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            '累计月票',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ),
        Text(
          '${state.realtimeComic.monthlyTicket}',
          style: TextStyle(color: Colors.orange, fontSize: 15),
        ),
      ],
    ),
  );

  Widget guess = Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '猜你喜欢',
          style: TextStyle(fontSize: 16),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          height: ScreenUtil().setWidth(180),
          child: state.guessList.length == 0
              ? Center(
            child: CupertinoActivityIndicator(),
          )
              : GridView.builder(
              itemCount: state.guessList.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: ScreenUtil().setWidth(10),
                  childAspectRatio: 1.8),
              itemBuilder: (context, index) {
                GuessEntity entity = state.guessList[index];
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: Column(
                    children: [
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: entity.cover,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Image(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  '${Constants.AssetImage('normal_placeholder_v')}')),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      Container(
                        height: 30,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        alignment: Alignment.center,
                        child: Text(
                          entity.name ?? '',
                          maxLines: 1,
                        ),
                      )
                    ],
                  ),
                  onTap: () => dispatch(
                      ComicDetailActionCreator.onOpenComicDetailPage(
                          entity.comicId)),
                );
              }),
        )
      ],
    ),
  );

  return ListView(
    padding: EdgeInsets.zero,
    children: [introduce, other, ticket, guess],
  );
}
