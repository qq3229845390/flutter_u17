import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/common/constants.dart';
import 'package:flutter_u17/models/comic_list_entity.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ComicListState state, Dispatch dispatch, ViewService viewService) {

  Widget _buildCell(index) {
    ComicListEntity entity = state.comics[index];
    String tags = entity.tags.first;
    entity.tags.forEach((e) {
      if (tags != e) {
        tags += ' '+e;
      }
    });
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))
        ),
        padding: EdgeInsets.all(10),
        height: 180,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 0.7,
              child: CachedNetworkImage(
                imageUrl: entity.cover,
                fit: BoxFit.fitHeight,
                placeholder: (context, url) => Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        '${Constants.AssetImage('normal_placeholder_v')}')),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(entity.name, style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    ),),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text('$tags | ${entity.author}', style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),),
                    ),
                    Expanded(
                      child: Text(entity.description, style: TextStyle(
                          fontSize: 14, color: Colors.grey
                      ), maxLines: 3, overflow: TextOverflow.ellipsis,),
                    ),
                    Text('更新时间${entity.conTag}', style: TextStyle(
                      color: Colors.orange,
                      fontSize: 14
                    ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => dispatch(ComicListActionCreator.onCellClick(entity.comicId)),
    );
  }

  return Scaffold(
    appBar: AppBar(
      title: Text(state.title),
    ),
    body: ListView.builder(
      itemCount: state.comics.length,
      itemBuilder: (context, index) => _buildCell(index),
    ),
  );
}
