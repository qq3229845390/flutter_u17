import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_u17/common/constants.dart';
import 'package:flutter_u17/views/bookcase/page.dart';
import 'package:flutter_u17/views/category/page.dart';
import 'package:flutter_u17/views/home/page.dart';
import 'package:flutter_u17/views/me/page.dart';

class TabbarState implements Cloneable<TabbarState> {

  List<Widget> pages;
  List items;
  int currentIndex;

  @override
  TabbarState clone() {
    return TabbarState()
      ..pages = pages
      ..items = items
      ..currentIndex = currentIndex
    ;
  }
}

TabbarState initState(Map<String, dynamic> args) {
  List<Widget> pages = [];
  List<BottomNavigationBarItem> items = [];
  pages
    ..add(HomePage().buildPage(null))
    ..add(CategoryPage().buildPage(null))
    ..add(BookcasePage().buildPage(null))
    ..add(MePage().buildPage(null));

  items
    ..add(
      BottomNavigationBarItem(
        title: Container(),
        icon: Image(image: AssetImage('${Constants.AssetImage('tab_home')}')),
        activeIcon: Image(image: AssetImage('${Constants.AssetImage('tab_home_S')}'))
      )
    )..add(
        BottomNavigationBarItem(
            title: Container(),
            icon: Image(image: AssetImage('${Constants.AssetImage('tab_class')}')),
            activeIcon: Image(image: AssetImage('${Constants.AssetImage('tab_class_S')}'))
        )
    )..add(
      BottomNavigationBarItem(
          title: Container(),
          icon: Image(image: AssetImage('${Constants.AssetImage('tab_book')}')),
          activeIcon: Image(image: AssetImage('${Constants.AssetImage('tab_book_S')}'))
      )
    )..add(
      BottomNavigationBarItem(
          title: Container(),
          icon: Image(image: AssetImage('${Constants.AssetImage('tab_mine')}')),
          activeIcon: Image(image: AssetImage('${Constants.AssetImage('tab_mine_S')}'))
      )
  );

  return TabbarState()
    ..pages = pages
    ..items = items
    ..currentIndex = 0
  ;
}
