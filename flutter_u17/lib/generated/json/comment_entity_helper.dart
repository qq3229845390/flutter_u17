import 'package:flutter_u17/models/comment_entity.dart';

commentEntityFromJson(CommentEntity data, Map<String, dynamic> json) {
	if (json['objectId'] != null) {
		data.objectId = json['objectId']?.toString();
	}
	if (json['objectType'] != null) {
		data.objectType = json['objectType']?.toString();
	}
	if (json['commentCount'] != null) {
		data.commentCount = json['commentCount']?.toString();
	}
	if (json['pageCount'] != null) {
		data.pageCount = json['pageCount']?.toInt();
	}
	if (json['commentList'] != null) {
		data.commentList = new List<CommantCommantList>();
		(json['commentList'] as List).forEach((v) {
			data.commentList.add(new CommantCommantList().fromJson(v));
		});
	}
	if (json['hasMore'] != null) {
		data.hasMore = json['hasMore'];
	}
	if (json['page'] != null) {
		data.page = json['page']?.toInt();
	}
	if (json['serverNextPage'] != null) {
		data.serverNextPage = json['serverNextPage']?.toInt();
	}
	return data;
}

Map<String, dynamic> commentEntityToJson(CommentEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['objectId'] = entity.objectId;
	data['objectType'] = entity.objectType;
	data['commentCount'] = entity.commentCount;
	data['pageCount'] = entity.pageCount;
	if (entity.commentList != null) {
		data['commentList'] =  entity.commentList.map((v) => v.toJson()).toList();
	}
	data['hasMore'] = entity.hasMore;
	data['page'] = entity.page;
	data['serverNextPage'] = entity.serverNextPage;
	return data;
}

commantCommantListFromJson(CommantCommantList data, Map<String, dynamic> json) {
	if (json['comment_id'] != null) {
		data.commentId = json['comment_id']?.toString();
	}
	if (json['parent_id'] != null) {
		data.parentId = json['parent_id']?.toString();
	}
	if (json['user_id'] != null) {
		data.userId = json['user_id']?.toInt();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['create_time'] != null) {
		data.createTime = json['create_time']?.toString();
	}
	if (json['floor'] != null) {
		data.floor = json['floor']?.toString();
	}
	if (json['is_delete'] != null) {
		data.isDelete = json['is_delete']?.toString();
	}
	if (json['is_up'] != null) {
		data.isUp = json['is_up']?.toString();
	}
	if (json['thread_id'] != null) {
		data.threadId = json['thread_id']?.toString();
	}
	if (json['ip'] != null) {
		data.ip = json['ip']?.toString();
	}
	if (json['total_reply'] != null) {
		data.totalReply = json['total_reply']?.toString();
	}
	if (json['comment_from'] != null) {
		data.commentFrom = json['comment_from']?.toString();
	}
	if (json['is_lock'] != null) {
		data.isLock = json['is_lock']?.toString();
	}
	if (json['color'] != null) {
		data.color = json['color'];
	}
	if (json['reply_time'] != null) {
		data.replyTime = json['reply_time']?.toString();
	}
	if (json['cate'] != null) {
		data.cate = json['cate']?.toString();
	}
	if (json['object_type'] != null) {
		data.objectType = json['object_type']?.toString();
	}
	if (json['is_choice'] != null) {
		data.isChoice = json['is_choice']?.toString();
	}
	if (json['from_product'] != null) {
		data.fromProduct = json['from_product']?.toString();
	}
	if (json['from_device_model'] != null) {
		data.fromDeviceModel = json['from_device_model']?.toString();
	}
	if (json['chapter_id'] != null) {
		data.chapterId = json['chapter_id']?.toString();
	}
	if (json['comic_id'] != null) {
		data.comicId = json['comic_id']?.toString();
	}
	if (json['praise_total'] != null) {
		data.praiseTotal = json['praise_total']?.toString();
	}
	if (json['comment_type'] != null) {
		data.commentType = json['comment_type']?.toString();
	}
	if (json['default_type'] != null) {
		data.defaultType = json['default_type']?.toString();
	}
	if (json['ticket_id'] != null) {
		data.ticketId = json['ticket_id']?.toString();
	}
	if (json['comic_author'] != null) {
		data.comicAuthor = json['comic_author']?.toInt();
	}
	if (json['content_filter'] != null) {
		data.contentFilter = json['content_filter']?.toString();
	}
	if (json['ticketNum'] != null) {
		data.ticketNum = json['ticketNum']?.toString();
	}
	if (json['gift_num'] != null) {
		data.giftNum = json['gift_num']?.toInt();
	}
	if (json['gift_img'] != null) {
		data.giftImg = json['gift_img']?.toString();
	}
	if (json['imageList'] != null) {
		data.imageList = new List<dynamic>();
		data.imageList.addAll(json['imageList']);
	}
	if (json['vip_exp'] != null) {
		data.vipExp = json['vip_exp']?.toString();
	}
	if (json['face_type'] != null) {
		data.faceType = json['face_type']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['nickname'] != null) {
		data.nickname = json['nickname']?.toString();
	}
	if (json['group_user'] != null) {
		data.groupUser = json['group_user']?.toString();
	}
	if (json['group_admin'] != null) {
		data.groupAdmin = json['group_admin']?.toString();
	}
	if (json['group_author'] != null) {
		data.groupAuthor = json['group_author']?.toString();
	}
	if (json['face'] != null) {
		data.face = json['face']?.toString();
	}
	if (json['sex'] != null) {
		data.sex = json['sex']?.toString();
	}
	if (json['exp'] != null) {
		data.exp = json['exp']?.toString();
	}
	if (json['online_time'] != null) {
		data.onlineTime = json['online_time']?.toString();
	}
	if (json['group_custom'] != null) {
		data.groupCustom = json['group_custom']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['level'] != null) {
		data.level = new CommentCommentListLevel().fromJson(json['level']);
	}
	if (json['create_time_str'] != null) {
		data.createTimeStr = json['create_time_str']?.toString();
	}
	if (json['likeState'] != null) {
		data.likeState = json['likeState']?.toInt();
	}
	if (json['likeCount'] != null) {
		data.likeCount = json['likeCount']?.toString();
	}
	return data;
}

Map<String, dynamic> commantCommantListToJson(CommantCommantList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['comment_id'] = entity.commentId;
	data['parent_id'] = entity.parentId;
	data['user_id'] = entity.userId;
	data['content'] = entity.content;
	data['create_time'] = entity.createTime;
	data['floor'] = entity.floor;
	data['is_delete'] = entity.isDelete;
	data['is_up'] = entity.isUp;
	data['thread_id'] = entity.threadId;
	data['ip'] = entity.ip;
	data['total_reply'] = entity.totalReply;
	data['comment_from'] = entity.commentFrom;
	data['is_lock'] = entity.isLock;
	data['color'] = entity.color;
	data['reply_time'] = entity.replyTime;
	data['cate'] = entity.cate;
	data['object_type'] = entity.objectType;
	data['is_choice'] = entity.isChoice;
	data['from_product'] = entity.fromProduct;
	data['from_device_model'] = entity.fromDeviceModel;
	data['chapter_id'] = entity.chapterId;
	data['comic_id'] = entity.comicId;
	data['praise_total'] = entity.praiseTotal;
	data['comment_type'] = entity.commentType;
	data['default_type'] = entity.defaultType;
	data['ticket_id'] = entity.ticketId;
	data['comic_author'] = entity.comicAuthor;
	data['content_filter'] = entity.contentFilter;
	data['ticketNum'] = entity.ticketNum;
	data['gift_num'] = entity.giftNum;
	data['gift_img'] = entity.giftImg;
	if (entity.imageList != null) {
		data['imageList'] =  [];
	}
	data['vip_exp'] = entity.vipExp;
	data['face_type'] = entity.faceType;
	data['title'] = entity.title;
	data['nickname'] = entity.nickname;
	data['group_user'] = entity.groupUser;
	data['group_admin'] = entity.groupAdmin;
	data['group_author'] = entity.groupAuthor;
	data['face'] = entity.face;
	data['sex'] = entity.sex;
	data['exp'] = entity.exp;
	data['online_time'] = entity.onlineTime;
	data['group_custom'] = entity.groupCustom;
	data['id'] = entity.id;
	if (entity.level != null) {
		data['level'] = entity.level.toJson();
	}
	data['create_time_str'] = entity.createTimeStr;
	data['likeState'] = entity.likeState;
	data['likeCount'] = entity.likeCount;
	return data;
}

commentCommentListLevelFromJson(CommentCommentListLevel data, Map<String, dynamic> json) {
	if (json['level'] != null) {
		data.level = json['level']?.toInt();
	}
	if (json['min_exp'] != null) {
		data.minExp = json['min_exp']?.toInt();
	}
	if (json['max'] != null) {
		data.max = json['max']?.toInt();
	}
	if (json['exp_speed'] != null) {
		data.expSpeed = json['exp_speed']?.toInt();
	}
	if (json['album_size'] != null) {
		data.albumSize = json['album_size']?.toInt();
	}
	if (json['favorite_num'] != null) {
		data.favoriteNum = json['favorite_num']?.toInt();
	}
	if (json['wage'] != null) {
		data.wage = json['wage']?.toInt();
	}
	if (json['ticket'] != null) {
		data.ticket = json['ticket']?.toInt();
	}
	return data;
}

Map<String, dynamic> commentCommentListLevelToJson(CommentCommentListLevel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['level'] = entity.level;
	data['min_exp'] = entity.minExp;
	data['max'] = entity.max;
	data['exp_speed'] = entity.expSpeed;
	data['album_size'] = entity.albumSize;
	data['favorite_num'] = entity.favoriteNum;
	data['wage'] = entity.wage;
	data['ticket'] = entity.ticket;
	return data;
}