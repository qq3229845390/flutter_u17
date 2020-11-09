import 'package:flutter_u17/generated/json/base/json_convert_content.dart';
import 'package:flutter_u17/generated/json/base/json_field.dart';

class ComicDetailRealtimeEntity with JsonConvert<ComicDetailRealtimeEntity> {
	ComicDetailRealtimeComic comic;
	@JSONField(name: "chapter_list")
	List<ComicDetailRealtimeChapterList> chapterList;
}

class ComicDetailRealtimeComic with JsonConvert<ComicDetailRealtimeComic> {
	@JSONField(name: "comic_id")
	String comicId;
	@JSONField(name: "user_id")
	String userId;
	String status;
	@JSONField(name: "click_total")
	String clickTotal;
	@JSONField(name: "total_ticket")
	int totalTicket;
	@JSONField(name: "comment_total")
	int commentTotal;
	@JSONField(name: "total_tucao")
	int totalTucao;
	@JSONField(name: "favorite_total")
	String favoriteTotal;
	@JSONField(name: "gift_total")
	String giftTotal;
	@JSONField(name: "monthly_ticket")
	int monthlyTicket;
	@JSONField(name: "vip_discount")
	double vipDiscount;
	@JSONField(name: "is_vip_free")
	bool isVipFree;
	@JSONField(name: "is_free")
	int isFree;
	@JSONField(name: "is_vip_buy")
	bool isVipBuy;
	@JSONField(name: "is_buy_action")
	int isBuyAction;
	@JSONField(name: "is_auto_buy")
	int isAutoBuy;
}

class ComicDetailRealtimeChapterList with JsonConvert<ComicDetailRealtimeChapterList> {
	@JSONField(name: "vip_images")
	String vipImages;
	@JSONField(name: "chapter_id")
	String chapterId;
	@JSONField(name: "is_view")
	int isView;
	String buyed;
	@JSONField(name: "buy_price")
	String buyPrice;
	@JSONField(name: "is_download")
	int isDownload;
	@JSONField(name: "read_state")
	int readState;
	@JSONField(name: "is_free")
	int isFree;
}
