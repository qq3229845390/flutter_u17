import 'package:flutter_u17/models/subscribe_entity.dart';

subscribeEntityFromJson(SubscribeEntity data, Map<String, dynamic> json) {
	if (json['comics'] != null) {
		data.comics = new List<SubscribeComic>();
		(json['comics'] as List).forEach((v) {
			data.comics.add(new SubscribeComic().fromJson(v));
		});
	}
	if (json['canMore'] != null) {
		data.canMore = json['canMore'];
	}
	if (json['argName'] != null) {
		data.argName = json['argName']?.toString();
	}
	if (json['argValue'] != null) {
		data.argValue = json['argValue']?.toString();
	}
	if (json['itemTitle'] != null) {
		data.itemTitle = json['itemTitle']?.toString();
	}
	if (json['titleIconUrl'] != null) {
		data.titleIconUrl = json['titleIconUrl']?.toString();
	}
	if (json['newTitleIconUrl'] != null) {
		data.newTitleIconUrl = json['newTitleIconUrl']?.toString();
	}
	if (json['maxSize'] != null) {
		data.maxSize = json['maxSize']?.toInt();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	return data;
}

Map<String, dynamic> subscribeEntityToJson(SubscribeEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.comics != null) {
		data['comics'] =  entity.comics.map((v) => v.toJson()).toList();
	}
	data['canMore'] = entity.canMore;
	data['argName'] = entity.argName;
	data['argValue'] = entity.argValue;
	data['itemTitle'] = entity.itemTitle;
	data['titleIconUrl'] = entity.titleIconUrl;
	data['newTitleIconUrl'] = entity.newTitleIconUrl;
	data['maxSize'] = entity.maxSize;
	data['description'] = entity.description;
	return data;
}

subscribeComicFromJson(SubscribeComic data, Map<String, dynamic> json) {
	if (json['comicId'] != null) {
		data.comicId = json['comicId']?.toInt();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['tags'] != null) {
		data.tags = json['tags']?.map((v) => v)?.toList()?.cast<dynamic>();
	}
	return data;
}

Map<String, dynamic> subscribeComicToJson(SubscribeComic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['comicId'] = entity.comicId;
	data['name'] = entity.name;
	data['cover'] = entity.cover;
	data['tags'] = entity.tags;
	return data;
}