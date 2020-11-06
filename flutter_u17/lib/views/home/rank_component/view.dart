import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/common/constants.dart';
import 'package:flutter_u17/models/rank_entity.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(RankState state, Dispatch dispatch, ViewService viewService) {
  Widget _buildCell(index) {
    RankEntity entity = state.ranks[index];
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 100,
        margin: EdgeInsets.only(top: index == 0 ? 0 : 10),
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: entity.cover,
              placeholder: (context, url) => Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      '${Constants.AssetImage('normal_placeholder_h')}')),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${entity.title}榜', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),),
                    Text(
                      entity.subTitle,
                      maxLines: 2,
                      style: TextStyle(color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }

  return Container(
    color: Color(0xfff4f4f4),
    child: Scrollbar(
      child: ListView.builder(
          itemCount: state.ranks.length,
          itemBuilder: (context, index) => _buildCell(index)),
    ),
  );
}
