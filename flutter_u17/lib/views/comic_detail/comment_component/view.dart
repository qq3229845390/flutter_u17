import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/common/constants.dart';
import 'package:flutter_u17/models/comment_entity.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CommentState state, Dispatch dispatch, ViewService viewService) {

  Widget _buildCell(index) {
    CommantCommantList entity = state.commentEntity.commentList[index];
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Color(0xfff4f4f4)))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: CachedNetworkImage(
              width: 30,
              height: 30,
              imageUrl: entity.face,
              placeholder: (context, url) => Image(
                  width: 30,
                  height: 30,
                  fit: BoxFit.fill,
                  image: AssetImage(
                      '${Constants.AssetImage('mine_author')}')),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(entity.nickname, style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Text(entity.content, style: TextStyle(
                        fontSize: 12
                    ),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  return state.commentEntity==null?CupertinoActivityIndicator():
  ListView.builder(
    padding: EdgeInsets.zero,
    itemCount: state.commentEntity.commentList.length,
    itemBuilder: (context, index) {
      return _buildCell(index);
    },
  );
}
