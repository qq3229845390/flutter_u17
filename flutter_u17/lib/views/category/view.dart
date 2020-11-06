import 'package:cached_network_image/cached_network_image.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/common/constants.dart';
import 'package:flutter_u17/models/category_entity.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    CategoryState state, Dispatch dispatch, ViewService viewService) {
  Widget _buildItem(index) {
    CategoryEntity entity = state.categorys[index];
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black45)
          ),
          child: Column(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: entity.cover,
                  placeholder: (context, url) => Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          '${Constants.AssetImage('normal_placeholder_h')}')),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 25,
                child: Text(entity.sortName),
              )
            ],
          ),
        ),
      ),
      onTap: () => dispatch(CategoryActionCreator.onOpenComicListPage(
          entity.sortName, entity.argCon, entity.argName, entity.argValue)),
    );
  }

  return Scaffold(
    appBar: AppBar(
      title: Text('分类'),
    ),
    body: Scrollbar(
      child: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: state.categorys.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) => _buildItem(index)),
    ),
  );
}
