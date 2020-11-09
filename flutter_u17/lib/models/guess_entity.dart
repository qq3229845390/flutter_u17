import 'package:flutter_u17/generated/json/base/json_convert_content.dart';
import 'package:flutter_u17/generated/json/base/json_field.dart';

class GuessEntity with JsonConvert<GuessEntity> {
	@JSONField(name: "comic_id")
	String comicId;
	String name;
	String cover;
	@JSONField(name: "short_description")
	String shortDescription;
	@JSONField(name: "ori_cover")
	String oriCover;
	@JSONField(name: "new_comic")
	bool newComic;
}
