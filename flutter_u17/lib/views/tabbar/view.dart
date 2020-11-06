import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TabbarState state, Dispatch dispatch, ViewService viewService) {
  ScreenUtil.init(viewService.context, designSize: Size(375, 667));
  return Scaffold(
    body: IndexedStack(
      index: state.currentIndex,
      children: state.pages,
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: state.items,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: state.currentIndex,
      elevation: 0,
      onTap: (index) => dispatch(TabbarActionCreator.switchPage(index)),
    ),
  );
}
