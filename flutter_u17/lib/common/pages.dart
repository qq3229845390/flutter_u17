import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/views/bookcase/page.dart';
import 'package:flutter_u17/views/category/page.dart';
import 'package:flutter_u17/views/comic_detail/page.dart';
import 'package:flutter_u17/views/comic_list/page.dart';
import 'package:flutter_u17/views/home/page.dart';
import 'package:flutter_u17/views/me/page.dart';
import 'package:flutter_u17/views/tabbar/page.dart';

class Pages {

  static const TABBAR = 'tabbar_page';
  static const HOME = 'home_page';
  static const CATEGORY = 'category_page';
  static const BOOKCASE = 'bookcase_page';
  static const ME = 'me_page';
  static const COMICLIST = 'comic_list_page';
  static const COMICDETAIL = 'comic_detail_page';

  static Map<String, Page<Object, dynamic>> pages = {
    Pages.TABBAR: TabbarPage(),
    Pages.HOME: HomePage(),
    Pages.CATEGORY: CategoryPage(),
    Pages.BOOKCASE: BookcasePage(),
    Pages.ME: MePage(),
    Pages.COMICLIST: ComicListPage(),
    Pages.COMICDETAIL: ComicDetailPage(),
  };

}