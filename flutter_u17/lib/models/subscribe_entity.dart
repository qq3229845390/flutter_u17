import 'package:flutter_u17/generated/json/base/json_convert_content.dart';

class SubscribeEntity with JsonConvert<SubscribeEntity> {
	List<SubscribeComic> comics;
	bool canMore;
	String argName;
	String argValue;
	String itemTitle;
	String titleIconUrl;
	String newTitleIconUrl;
	int maxSize;
	String description;
}

class SubscribeComic with JsonConvert<SubscribeComic> {
	int comicId;
	String name;
	String cover;
	List tags;
}
