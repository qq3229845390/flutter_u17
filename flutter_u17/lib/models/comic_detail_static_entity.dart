import 'package:flutter_u17/generated/json/base/json_convert_content.dart';
import 'package:flutter_u17/generated/json/base/json_field.dart';

class ComicDetailStaticEntity with JsonConvert<ComicDetailStaticEntity> {
	ComicDetailStaticComic comic;
	@JSONField(name: "chapter_list")
	List<ComicDetailStaticChapterList> chapterList;
	List<ComicDetailStaticOtherWork> otherWorks;
}

class ComicDetailStaticComic with JsonConvert<ComicDetailStaticComic> {
	String name;
	@JSONField(name: "comic_id")
	String comicId;
	@JSONField(name: "short_description")
	String shortDescription;
	int accredit;
	String cover;
	@JSONField(name: "is_vip")
	int isVip;
	String type;
	String ori;
	@JSONField(name: "theme_ids")
	List<String> themeIds;
	@JSONField(name: "series_status")
	String seriesStatus;
	@JSONField(name: "last_update_time")
	int lastUpdateTime;
	String description;
	@JSONField(name: "cate_id")
	String cateId;
	int status;
	@JSONField(name: "thread_id")
	String threadId;
	@JSONField(name: "last_update_week")
	String lastUpdateWeek;
	String wideCover;
	List<ComicDetailStaticComicClassifyTag> classifyTags;
	@JSONField(name: "is_week")
	int isWeek;
	String level;
	@JSONField(name: "comic_color")
	String comicColor;
	ComicDetailStaticComicAuthor author;
	@JSONField(name: "is_dub")
	int isDub;
}

class ComicDetailStaticComicClassifyTag with JsonConvert<ComicDetailStaticComicClassifyTag> {
	String name;
	String argName;
	int argVal;
}

class ComicDetailStaticComicAuthor with JsonConvert<ComicDetailStaticComicAuthor> {
	String avatar;
	String name;
	String id;
}

class ComicDetailStaticChapterList with JsonConvert<ComicDetailStaticChapterList> {
	String name;
	@JSONField(name: "image_total")
	String imageTotal;
	@JSONField(name: "chapter_id")
	String chapterId;
	String type;
	String price;
	String size;
	@JSONField(name: "pass_time")
	int passTime;
	@JSONField(name: "release_time")
	String releaseTime;
	@JSONField(name: "zip_high_webp")
	String zipHighWebp;
	@JSONField(name: "crop_zip_size")
	String cropZipSize;
	@JSONField(name: "is_new")
	int isNew;
	@JSONField(name: "has_locked_image")
	bool hasLockedImage;
	List imHightArr;
	int countImHightArr;
}

class ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr with JsonConvert<ComicDetailStaticChapterListImHightArrComicDetailStaticChapterListImHightArr> {
	String height;
	String width;
}

class ComicDetailStaticOtherWork with JsonConvert<ComicDetailStaticOtherWork> {
	String comicId;
	String coverUrl;
	String name;
	String passChapterNum;
}
