import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/common/constants.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';
import 'package:flutter_u17/views/home/action.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(VipState state, Dispatch dispatch, ViewService viewService) {
  Widget _buildHead(SubscribeEntity entity) {
    return Container(
      height: 40,
      color: Colors.white,
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          CachedNetworkImage(imageUrl: entity.newTitleIconUrl, width: 25, height: 25),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(entity.itemTitle),
            ),
          ),
          entity.description=='更多'?IconButton(icon: Icon(Icons.more_horiz ,color: Colors.grey,), onPressed: () {
            dispatch(HomeActionCreator.onOpenComicListPage(entity.itemTitle, 0, entity.argName, entity.argValue));
          }):Container()
        ],
      ),
    );
  }

  Widget _buildContent(List<SubscribeComic> comics) {
    return GridView.builder(
        itemCount: comics.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) {
          SubscribeComic comic = comics[index];
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Column(
              children: [
                Expanded(
                  child: CachedNetworkImage(
                    imageUrl: comic.cover,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            '${Constants.AssetImage('normal_placeholder_v')}')),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  child: Text(comic.name, maxLines: 1,),
                )
              ],
            ),
            onTap: () => dispatch(HomeActionCreator.onOpenComicDetailPage(comic.comicId)),
          );
        }
    );
  }

  Widget _buildCell(index) {
    SubscribeEntity entity = state.vips[index];

    return Container(
      margin: EdgeInsets.only(top: index==0?0:10),
      child: Column(
        children: [
          _buildHead(entity),
          Container(
            height: (entity.comics.length/3).ceil() * 200.0,
            color: Colors.white,
            child: _buildContent(entity.comics),
          )
        ],
      ),
    );
  }

  return ListView.builder(
    itemCount: state.vips.length,
    itemBuilder: (context, index) => _buildCell(index),
  );
}
