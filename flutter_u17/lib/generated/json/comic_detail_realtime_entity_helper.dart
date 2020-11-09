import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';

comicDetailRealtimeEntityFromJson(ComicDetailRealtimeEntity data, Map<String, dynamic> json) {
	if (json['comic'] != null) {
		data.comic = new ComicDetailRealtimeComic().fromJson(json['comic']);
	}
	if (json['chapter_list'] != null) {
		data.chapterList = new List<ComicDetailRealtimeChapterList>();
		(json['chapter_list'] as List).forEach((v) {
			data.chapterList.add(new ComicDetailRealtimeChapterList().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> comicDetailRealtimeEntityToJson(ComicDetailRealtimeEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.comic != null) {
		data['comic'] = entity.comic.toJson();
	}
	if (entity.chapterList != null) {
		data['chapter_list'] =  entity.chapterList.map((v) => v.toJson()).toList();
	}
	return data;
}

comicDetailRealtimeComicFromJson(ComicDetailRealtimeComic data, Map<String, dynamic> json) {
	if (json['comic_id'] != null) {
		data.comicId = json['comic_id']?.toString();
	}
	if (json['user_id'] != null) {
		data.userId = json['user_id']?.toString();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toString();
	}
	if (json['click_total'] != null) {
		data.clickTotal = json['click_total']?.toString();
	}
	if (json['total_ticket'] != null) {
		data.totalTicket = json['total_ticket']?.toInt();
	}
	if (json['comment_total'] != null) {
		data.commentTotal = json['comment_total']?.toInt();
	}
	if (json['total_tucao'] != null) {
		data.totalTucao = json['total_tucao']?.toInt();
	}
	if (json['favorite_total'] != null) {
		data.favoriteTotal = json['favorite_total']?.toString();
	}
	if (json['gift_total'] != null) {
		data.giftTotal = json['gift_total']?.toString();
	}
	if (json['monthly_ticket'] != null) {
		data.monthlyTicket = json['monthly_ticket']?.toInt();
	}
	if (json['vip_discount'] != null) {
		data.vipDiscount = json['vip_discount']?.toDouble();
	}
	if (json['is_vip_free'] != null) {
		data.isVipFree = json['is_vip_free'];
	}
	if (json['is_free'] != null) {
		data.isFree = json['is_free']?.toInt();
	}
	if (json['is_vip_buy'] != null) {
		data.isVipBuy = json['is_vip_buy'];
	}
	if (json['is_buy_action'] != null) {
		data.isBuyAction = json['is_buy_action']?.toInt();
	}
	if (json['is_auto_buy'] != null) {
		data.isAutoBuy = json['is_auto_buy']?.toInt();
	}
	return data;
}

Map<String, dynamic> comicDetailRealtimeComicToJson(ComicDetailRealtimeComic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['comic_id'] = entity.comicId;
	data['user_id'] = entity.userId;
	data['status'] = entity.status;
	data['click_total'] = entity.clickTotal;
	data['total_ticket'] = entity.totalTicket;
	data['comment_total'] = entity.commentTotal;
	data['total_tucao'] = entity.totalTucao;
	data['favorite_total'] = entity.favoriteTotal;
	data['gift_total'] = entity.giftTotal;
	data['monthly_ticket'] = entity.monthlyTicket;
	data['vip_discount'] = entity.vipDiscount;
	data['is_vip_free'] = entity.isVipFree;
	data['is_free'] = entity.isFree;
	data['is_vip_buy'] = entity.isVipBuy;
	data['is_buy_action'] = entity.isBuyAction;
	data['is_auto_buy'] = entity.isAutoBuy;
	return data;
}

comicDetailRealtimeChapterListFromJson(ComicDetailRealtimeChapterList data, Map<String, dynamic> json) {
	if (json['vip_images'] != null) {
		data.vipImages = json['vip_images']?.toString();
	}
	if (json['chapter_id'] != null) {
		data.chapterId = json['chapter_id']?.toString();
	}
	if (json['is_view'] != null) {
		data.isView = json['is_view']?.toInt();
	}
	if (json['buyed'] != null) {
		data.buyed = json['buyed']?.toString();
	}
	if (json['buy_price'] != null) {
		data.buyPrice = json['buy_price']?.toString();
	}
	if (json['is_download'] != null) {
		data.isDownload = json['is_download']?.toInt();
	}
	if (json['read_state'] != null) {
		data.readState = json['read_state']?.toInt();
	}
	if (json['is_free'] != null) {
		data.isFree = json['is_free']?.toInt();
	}
	return data;
}

Map<String, dynamic> comicDetailRealtimeChapterListToJson(ComicDetailRealtimeChapterList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['vip_images'] = entity.vipImages;
	data['chapter_id'] = entity.chapterId;
	data['is_view'] = entity.isView;
	data['buyed'] = entity.buyed;
	data['buy_price'] = entity.buyPrice;
	data['is_download'] = entity.isDownload;
	data['read_state'] = entity.readState;
	data['is_free'] = entity.isFree;
	return data;
}