// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:flutter_u17/generated/json/comic_detail_static_entity_helper.dart';
import 'package:flutter_u17/models/subscribe_entity.dart';
import 'package:flutter_u17/generated/json/subscribe_entity_helper.dart';
import 'package:flutter_u17/models/category_entity.dart';
import 'package:flutter_u17/generated/json/category_entity_helper.dart';
import 'package:flutter_u17/models/comic_list_entity.dart';
import 'package:flutter_u17/generated/json/comic_list_entity_helper.dart';
import 'package:flutter_u17/models/rank_entity.dart';
import 'package:flutter_u17/generated/json/rank_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case ComicDetailStaticEntity:
			return comicDetailStaticEntityFromJson(data as ComicDetailStaticEntity, json) as T;			case ComicDetailStaticComic:
			return comicDetailStaticComicFromJson(data as ComicDetailStaticComic, json) as T;			case ComicDetailStaticComicClassifyTag:
			return comicDetailStaticComicClassifyTagFromJson(data as ComicDetailStaticComicClassifyTag, json) as T;			case ComicDetailStaticComicAuthor:
			return comicDetailStaticComicAuthorFromJson(data as ComicDetailStaticComicAuthor, json) as T;			case ComicDetailStaticChapterList:
			return comicDetailStaticChapterListFromJson(data as ComicDetailStaticChapterList, json) as T;			case ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr:
			return comicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArrFromJson(data as ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr, json) as T;			case ComicDetailStaticOtherWork:
			return comicDetailStaticOtherWorkFromJson(data as ComicDetailStaticOtherWork, json) as T;			case SubscribeEntity:
			return subscribeEntityFromJson(data as SubscribeEntity, json) as T;			case SubscribeComic:
			return subscribeComicFromJson(data as SubscribeComic, json) as T;			case CategoryEntity:
			return categoryEntityFromJson(data as CategoryEntity, json) as T;			case ComicListEntity:
			return comicListEntityFromJson(data as ComicListEntity, json) as T;			case RankEntity:
			return rankEntityFromJson(data as RankEntity, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case ComicDetailStaticEntity:
			return comicDetailStaticEntityToJson(data as ComicDetailStaticEntity);			case ComicDetailStaticComic:
			return comicDetailStaticComicToJson(data as ComicDetailStaticComic);			case ComicDetailStaticComicClassifyTag:
			return comicDetailStaticComicClassifyTagToJson(data as ComicDetailStaticComicClassifyTag);			case ComicDetailStaticComicAuthor:
			return comicDetailStaticComicAuthorToJson(data as ComicDetailStaticComicAuthor);			case ComicDetailStaticChapterList:
			return comicDetailStaticChapterListToJson(data as ComicDetailStaticChapterList);			case ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr:
			return comicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArrToJson(data as ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr);			case ComicDetailStaticOtherWork:
			return comicDetailStaticOtherWorkToJson(data as ComicDetailStaticOtherWork);			case SubscribeEntity:
			return subscribeEntityToJson(data as SubscribeEntity);			case SubscribeComic:
			return subscribeComicToJson(data as SubscribeComic);			case CategoryEntity:
			return categoryEntityToJson(data as CategoryEntity);			case ComicListEntity:
			return comicListEntityToJson(data as ComicListEntity);			case RankEntity:
			return rankEntityToJson(data as RankEntity);    }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'ComicDetailStaticEntity':
			return ComicDetailStaticEntity().fromJson(json);			case 'ComicDetailStaticComic':
			return ComicDetailStaticComic().fromJson(json);			case 'ComicDetailStaticComicClassifyTag':
			return ComicDetailStaticComicClassifyTag().fromJson(json);			case 'ComicDetailStaticComicAuthor':
			return ComicDetailStaticComicAuthor().fromJson(json);			case 'ComicDetailStaticChapterList':
			return ComicDetailStaticChapterList().fromJson(json);			case 'ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr':
			return ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr().fromJson(json);			case 'ComicDetailStaticOtherWork':
			return ComicDetailStaticOtherWork().fromJson(json);			case 'SubscribeEntity':
			return SubscribeEntity().fromJson(json);			case 'SubscribeComic':
			return SubscribeComic().fromJson(json);			case 'CategoryEntity':
			return CategoryEntity().fromJson(json);			case 'ComicListEntity':
			return ComicListEntity().fromJson(json);			case 'RankEntity':
			return RankEntity().fromJson(json);    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'ComicDetailStaticEntity':
			return List<ComicDetailStaticEntity>();			case 'ComicDetailStaticComic':
			return List<ComicDetailStaticComic>();			case 'ComicDetailStaticComicClassifyTag':
			return List<ComicDetailStaticComicClassifyTag>();			case 'ComicDetailStaticComicAuthor':
			return List<ComicDetailStaticComicAuthor>();			case 'ComicDetailStaticChapterList':
			return List<ComicDetailStaticChapterList>();			case 'ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr':
			return List<ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr>();			case 'ComicDetailStaticOtherWork':
			return List<ComicDetailStaticOtherWork>();			case 'SubscribeEntity':
			return List<SubscribeEntity>();			case 'SubscribeComic':
			return List<SubscribeComic>();			case 'CategoryEntity':
			return List<CategoryEntity>();			case 'ComicListEntity':
			return List<ComicListEntity>();			case 'RankEntity':
			return List<RankEntity>();    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}