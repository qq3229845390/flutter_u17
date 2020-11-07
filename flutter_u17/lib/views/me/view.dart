import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/common/constants.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MeState state, Dispatch dispatch, ViewService viewService) {

  Widget _buildCell(item, index) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('${Constants.AssetImage(item['icon'])}'),
                width: 30, height: 30,
              ),
              Expanded(
                child: Container(
                  height: 40,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(
                        color: Color(0xfff4f4f4),
                      width: item['padding']?0:1
                    ))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item['title'], style: TextStyle(
                        fontSize: 15
                      ),),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Offstage(
          offstage: !item['padding'],
          child: Container(height: 10, color: Color(0xfff4f4f4),),
        )
      ],
    );
  }

  return Scaffold(
    body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('${Constants.AssetImage('mine_bg_for_boy')}'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: state.cellList.length,
          itemBuilder: (context, index) {
            return _buildCell(state.cellList[index], index);
          },
        )),
  );

  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          primary: false,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
              image: AssetImage('${Constants.AssetImage('mine_bg_for_boy')}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return _buildCell(state.cellList[index], index);
            },
            childCount: state.cellList.length
          ),
        )
      ],
    ),
  );
}
