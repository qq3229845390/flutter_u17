import 'package:flutter_u17/models/comic_list_entity.dart';

comicListEntityFromJson(ComicListEntity data, Map<String, dynamic> json) {
	if (json['conTag'] != null) {
		data.conTag = json['conTag']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['comicId'] != null) {
		data.comicId = json['comicId']?.toInt();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['short_description'] != null) {
		data.shortDescription = json['short_description']?.toString();
	}
	if (json['is_vip'] != null) {
		data.isVip = json['is_vip']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['flag'] != null) {
		data.flag = json['flag']?.toInt();
	}
	if (json['tags'] != null) {
		data.tags = json['tags']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['author'] != null) {
		data.author = json['author']?.toString();
	}
	return data;
}

Map<String, dynamic> comicListEntityToJson(ComicListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['conTag'] = entity.conTag;
	data['cover'] = entity.cover;
	data['comicId'] = entity.comicId;
	data['description'] = entity.description;
	data['short_description'] = entity.shortDescription;
	data['is_vip'] = entity.isVip;
	data['name'] = entity.name;
	data['flag'] = entity.flag;
	data['tags'] = entity.tags;
	data['author'] = entity.author;
	return data;
}