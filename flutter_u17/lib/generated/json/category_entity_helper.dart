import 'package:flutter_u17/models/category_entity.dart';

categoryEntityFromJson(CategoryEntity data, Map<String, dynamic> json) {
	if (json['sortId'] != null) {
		data.sortId = json['sortId']?.toInt();
	}
	if (json['sortName'] != null) {
		data.sortName = json['sortName']?.toString();
	}
	if (json['isLike'] != null) {
		data.isLike = json['isLike'];
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['canEdit'] != null) {
		data.canEdit = json['canEdit'];
	}
	if (json['argName'] != null) {
		data.argName = json['argName']?.toString();
	}
	if (json['argValue'] != null) {
		data.argValue = json['argValue']?.toInt();
	}
	if (json['argCon'] != null) {
		data.argCon = json['argCon']?.toInt();
	}
	return data;
}

Map<String, dynamic> categoryEntityToJson(CategoryEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sortId'] = entity.sortId;
	data['sortName'] = entity.sortName;
	data['isLike'] = entity.isLike;
	data['cover'] = entity.cover;
	data['canEdit'] = entity.canEdit;
	data['argName'] = entity.argName;
	data['argValue'] = entity.argValue;
	data['argCon'] = entity.argCon;
	return data;
}