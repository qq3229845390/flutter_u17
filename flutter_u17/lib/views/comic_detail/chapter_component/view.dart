import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../../../models/comic_detail_static_entity.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(ChapterState state, Dispatch dispatch, ViewService viewService) {
  return GridView.builder(
    padding: EdgeInsets.all(10),
      itemCount: state.chapterList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3
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
}
