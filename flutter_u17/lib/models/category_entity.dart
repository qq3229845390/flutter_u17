import 'package:flutter_u17/generated/json/base/json_convert_content.dart';

class CategoryEntity with JsonConvert<CategoryEntity> {
  int sortId;
  String sortName;
  bool isLike;
  String cover;
  bool canEdit;
  String argName;
  int argValue;
  int argCon;
}
