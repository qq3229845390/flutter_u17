import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:intl/intl.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ChapterState state, Dispatch dispatch, ViewService viewService) {

  String time = state.lastUpdateTime==0?'':DateFormat("yyyy-MM-dd").format(DateTime.fromMillisecondsSinceEpoch(state.lastUpdateTime*1000));
  String name = state.chapterList.length==0?'':state.isOrder?state.chapterList.last.name:state.chapterList.first.name;
  Widget title = Text('目录 ${time} 更新 ${name}',style:  TextStyle(
    color: Colors.grey
  ),);

  Widget chapter = GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: state.chapterList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 4
      ),
      itemBuilder: (context, index) {
        ComicDetailStaticChapterList entity = state.chapterList[index];
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all()
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(entity.name, style: TextStyle(
              fontSize: 12
          ), maxLines: 1, overflow: TextOverflow.ellipsis,),
        );
      }
  );

  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title,
            GestureDetector(
              child: Text(state.isOrder?'顺序':'倒序', style: TextStyle(
                color: Colors.grey
              ),),
              onTap: () {
                dispatch(ChapterActionCreator.updateOrder());
              },
            )
          ],
        ),
      ),
      Expanded(
        child: chapter,
      )
    ],
  );
}
