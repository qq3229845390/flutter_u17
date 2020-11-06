import 'package:flutter_u17/models/rank_entity.dart';

rankEntityFromJson(RankEntity data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['argName'] != null) {
		data.argName = json['argName']?.toString();
	}
	if (json['argValue'] != null) {
		data.argValue = json['argValue']?.toString();
	}
	if (json['rankingType'] != null) {
		data.rankingType = json['rankingType']?.toString();
	}
	return data;
}

Map<String, dynamic> rankEntityToJson(RankEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['cover'] = entity.cover;
	data['argName'] = entity.argName;
	data['argValue'] = entity.argValue;
	data['rankingType'] = entity.rankingType;
	return data;
}