import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(DetailState state, Dispatch dispatch, ViewService viewService) {
  
  if (state.comic == null) {
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
        Text('作品介绍', style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400
        ),),
        Text('   ${state.comic.description}', style: TextStyle(
          color: Colors.grey,
          fontSize: 14
        ), maxLines: 3, overflow: TextOverflow.ellipsis,)
      ],
    ),
  );

  Widget other = Container(
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
              Text('${state.otherWorks.length}本', style: TextStyle(
                color: Colors.grey
              ),),
            ],
          ),
        ),
        Icon(Icons.keyboard_arrow_right, color: Colors.grey,)
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
        Text('本月月票', style: TextStyle(
            color: Colors.grey,
          fontSize: 15
        ),),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text('109', style: TextStyle(
              color: Colors.orange,
              fontSize: 15
          ),),
        ),
        Text('|', style: TextStyle(
            color: Colors.grey,
            fontSize: 15
        ),),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text('累计月票', style: TextStyle(
              color: Colors.grey,
              fontSize: 15
          ),),
        ),
        Text('24165', style: TextStyle(
            color: Colors.orange,
            fontSize: 15
        ),),
      ],
    ),
  );

  return ListView(
    padding: EdgeInsets.zero,
    children: [
      introduce,
      other,
      ticket
    ],
  );
}
