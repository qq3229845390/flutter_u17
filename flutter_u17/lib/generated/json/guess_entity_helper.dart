import 'package:flutter_u17/models/guess_entity.dart';

guessEntityFromJson(GuessEntity data, Map<String, dynamic> json) {
	if (json['comic_id'] != null) {
		data.comicId = json['comic_id']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['short_description'] != null) {
		data.shortDescription = json['short_description']?.toString();
	}
	if (json['ori_cover'] != null) {
		data.oriCover = json['ori_cover']?.toString();
	}
	if (json['new_comic'] != null) {
		data.newComic = json['new_comic'];
	}
	return data;
}

Map<String, dynamic> guessEntityToJson(GuessEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['comic_id'] = entity.comicId;
	data['name'] = entity.name;
	data['cover'] = entity.cover;
	data['short_description'] = entity.shortDescription;
	data['ori_cover'] = entity.oriCover;
	data['new_comic'] = entity.newComic;
	return data;
}