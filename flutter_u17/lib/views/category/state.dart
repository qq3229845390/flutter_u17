import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/category_entity.dart';

class CategoryState implements Cloneable<CategoryState> {

  List<CategoryEntity> categorys;

  @override
  CategoryState clone() {
    return CategoryState()
      ..categorys = categorys
    ;
  }
}

CategoryState initState(Map<String, dynamic> args) {
  return CategoryState()
    ..categorys = []
  ;
}
