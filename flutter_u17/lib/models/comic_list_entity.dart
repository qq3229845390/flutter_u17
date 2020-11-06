import 'package:flutter_u17/generated/json/base/json_convert_content.dart';
import 'package:flutter_u17/generated/json/base/json_field.dart';

class ComicListEntity with JsonConvert<ComicListEntity> {
	String conTag;
	String cover;
	int comicId;
	String description;
	@JSONField(name: "short_description")
	String shortDescription;
	@JSONField(name: "is_vip")
	int isVip;
	String name;
	int flag;
	List<String> tags;
	String author;
}
