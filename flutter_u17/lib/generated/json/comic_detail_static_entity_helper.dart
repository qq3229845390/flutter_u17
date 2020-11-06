import 'package:flutter_u17/models/comic_detail_static_entity.dart';

comicDetailStaticEntityFromJson(ComicDetailStaticEntity data, Map<String, dynamic> json) {
	if (json['comic'] != null) {
		data.comic = new ComicDetailStaticComic().fromJson(json['comic']);
	}
	if (json['chapter_list'] != null) {
		data.chapterList = new List<ComicDetailStaticChapterList>();
		(json['chapter_list'] as List).forEach((v) {
			data.chapterList.add(new ComicDetailStaticChapterList().fromJson(v));
		});
	}
	if (json['otherWorks'] != null) {
		data.otherWorks = new List<ComicDetailStaticOtherWork>();
		(json['otherWorks'] as List).forEach((v) {
			data.otherWorks.add(new ComicDetailStaticOtherWork().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> comicDetailStaticEntityToJson(ComicDetailStaticEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.comic != null) {
		data['comic'] = entity.comic.toJson();
	}
	if (entity.chapterList != null) {
		data['chapter_list'] =  entity.chapterList.map((v) => v.toJson()).toList();
	}
	if (entity.otherWorks != null) {
		data['otherWorks'] =  entity.otherWorks.map((v) => v.toJson()).toList();
	}
	return data;
}

comicDetailStaticComicFromJson(ComicDetailStaticComic data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['comic_id'] != null) {
		data.comicId = json['comic_id']?.toString();
	}
	if (json['short_description'] != null) {
		data.shortDescription = json['short_description']?.toString();
	}
	if (json['accredit'] != null) {
		data.accredit = json['accredit']?.toInt();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['is_vip'] != null) {
		data.isVip = json['is_vip']?.toInt();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['ori'] != null) {
		data.ori = json['ori']?.toString();
	}
	if (json['theme_ids'] != null) {
		data.themeIds = json['theme_ids']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	if (json['series_status'] != null) {
		data.seriesStatus = json['series_status']?.toString();
	}
	if (json['last_update_time'] != null) {
		data.lastUpdateTime = json['last_update_time']?.toInt();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['cate_id'] != null) {
		data.cateId = json['cate_id']?.toString();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['thread_id'] != null) {
		data.threadId = json['thread_id']?.toString();
	}
	if (json['last_update_week'] != null) {
		data.lastUpdateWeek = json['last_update_week']?.toString();
	}
	if (json['wideCover'] != null) {
		data.wideCover = json['wideCover']?.toString();
	}
	if (json['classifyTags'] != null) {
		data.classifyTags = new List<ComicDetailStaticComicClassifyTag>();
		(json['classifyTags'] as List).forEach((v) {
			data.classifyTags.add(new ComicDetailStaticComicClassifyTag().fromJson(v));
		});
	}
	if (json['is_week'] != null) {
		data.isWeek = json['is_week']?.toInt();
	}
	if (json['level'] != null) {
		data.level = json['level']?.toString();
	}
	if (json['comic_color'] != null) {
		data.comicColor = json['comic_color']?.toString();
	}
	if (json['author'] != null) {
		data.author = new ComicDetailStaticComicAuthor().fromJson(json['author']);
	}
	if (json['is_dub'] != null) {
		data.isDub = json['is_dub']?.toInt();
	}
	return data;
}

Map<String, dynamic> comicDetailStaticComicToJson(ComicDetailStaticComic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['comic_id'] = entity.comicId;
	data['short_description'] = entity.shortDescription;
	data['accredit'] = entity.accredit;
	data['cover'] = entity.cover;
	data['is_vip'] = entity.isVip;
	data['type'] = entity.type;
	data['ori'] = entity.ori;
	data['theme_ids'] = entity.themeIds;
	data['series_status'] = entity.seriesStatus;
	data['last_update_time'] = entity.lastUpdateTime;
	data['description'] = entity.description;
	data['cate_id'] = entity.cateId;
	data['status'] = entity.status;
	data['thread_id'] = entity.threadId;
	data['last_update_week'] = entity.lastUpdateWeek;
	data['wideCover'] = entity.wideCover;
	if (entity.classifyTags != null) {
		data['classifyTags'] =  entity.classifyTags.map((v) => v.toJson()).toList();
	}
	data['is_week'] = entity.isWeek;
	data['level'] = entity.level;
	data['comic_color'] = entity.comicColor;
	if (entity.author != null) {
		data['author'] = entity.author.toJson();
	}
	data['is_dub'] = entity.isDub;
	return data;
}

comicDetailStaticComicClassifyTagFromJson(ComicDetailStaticComicClassifyTag data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['argName'] != null) {
		data.argName = json['argName']?.toString();
	}
	if (json['argVal'] != null) {
		data.argVal = json['argVal']?.toInt();
	}
	return data;
}

Map<String, dynamic> comicDetailStaticComicClassifyTagToJson(ComicDetailStaticComicClassifyTag entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['argName'] = entity.argName;
	data['argVal'] = entity.argVal;
	return data;
}

comicDetailStaticComicAuthorFromJson(ComicDetailStaticComicAuthor data, Map<String, dynamic> json) {
	if (json['avatar'] != null) {
		data.avatar = json['avatar']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	return data;
}

Map<String, dynamic> comicDetailStaticComicAuthorToJson(ComicDetailStaticComicAuthor entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['avatar'] = entity.avatar;
	data['name'] = entity.name;
	data['id'] = entity.id;
	return data;
}

comicDetailStaticChapterListFromJson(ComicDetailStaticChapterList data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image_total'] != null) {
		data.imageTotal = json['image_total']?.toString();
	}
	if (json['chapter_id'] != null) {
		data.chapterId = json['chapter_id']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toString();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toString();
	}
	if (json['pass_time'] != null) {
		data.passTime = json['pass_time']?.toInt();
	}
	if (json['release_time'] != null) {
		data.releaseTime = json['release_time']?.toString();
	}
	if (json['zip_high_webp'] != null) {
		data.zipHighWebp = json['zip_high_webp']?.toString();
	}
	if (json['crop_zip_size'] != null) {
		data.cropZipSize = json['crop_zip_size']?.toString();
	}
	if (json['is_new'] != null) {
		data.isNew = json['is_new']?.toInt();
	}
	if (json['has_locked_image'] != null) {
		data.hasLockedImage = json['has_locked_image'];
	}
	if (json['imHightArr'] != null) {
		data.imHightArr = json['imHightArr']?.map((v) => v)?.toList()?.cast<dynamic>();
	}
	if (json['countImHightArr'] != null) {
		data.countImHightArr = json['countImHightArr']?.toInt();
	}
	return data;
}

Map<String, dynamic> comicDetailStaticChapterListToJson(ComicDetailStaticChapterList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['image_total'] = entity.imageTotal;
	data['chapter_id'] = entity.chapterId;
	data['type'] = entity.type;
	data['price'] = entity.price;
	data['size'] = entity.size;
	data['pass_time'] = entity.passTime;
	data['release_time'] = entity.releaseTime;
	data['zip_high_webp'] = entity.zipHighWebp;
	data['crop_zip_size'] = entity.cropZipSize;
	data['is_new'] = entity.isNew;
	data['has_locked_image'] = entity.hasLockedImage;
	data['imHightArr'] = entity.imHightArr;
	data['countImHightArr'] = entity.countImHightArr;
	return data;
}

comicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArrFromJson(ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr data, Map<String, dynamic> json) {
	if (json['height'] != null) {
		data.height = json['height']?.toString();
	}
	if (json['width'] != null) {
		data.width = json['width']?.toString();
	}
	return data;
}

Map<String, dynamic> comicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArrToJson(ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['height'] = entity.height;
	data['width'] = entity.width;
	return data;
}

comicDetailStaticOtherWorkFromJson(ComicDetailStaticOtherWork data, Map<String, dynamic> json) {
	if (json['comicId'] != null) {
		data.comicId = json['comicId']?.toString();
	}
	if (json['coverUrl'] != null) {
		data.coverUrl = json['coverUrl']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['passChapterNum'] != null) {
		data.passChapterNum = json['passChapterNum']?.toString();
	}
	return data;
}

Map<String, dynamic> comicDetailStaticOtherWorkToJson(ComicDetailStaticOtherWork entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['comicId'] = entity.comicId;
	data['coverUrl'] = entity.coverUrl;
	data['name'] = entity.name;
	data['passChapterNum'] = entity.passChapterNum;
	return data;
}