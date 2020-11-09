import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/models/comic_detail_realtime_entity.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:flutter_u17/views/comic_detail/chapter_component/state.dart';
import 'package:flutter_u17/views/comic_detail/comment_component/state.dart';
import 'package:flutter_u17/views/comic_detail/detail_component/state.dart';

class ComicDetailState implements Cloneable<ComicDetailState> {

  int comicid;
  ComicDetailStaticEntity staticEntity;
  ComicDetailRealtimeEntity realtimeEntity;
  TabController tabController;
  int page;

  DetailState detailState;
  ChapterState chapterState;
  CommentState commentState;

  @override
  ComicDetailState clone() {
    return ComicDetailState()
      ..comicid = comicid
      ..staticEntity = staticEntity
      ..realtimeEntity = realtimeEntity
      ..tabController = tabController
      ..page = page
      ..detailState = detailState
      ..chapterState = chapterState
      ..commentState = commentState
    ;
  }
}

ComicDetailState initState(Map<String, dynamic> args) {
  return ComicDetailState()
    ..comicid = args['comicid']??''
    ..staticEntity = null
    ..realtimeEntity = null
    ..page = 1
    ..detailState = DetailState()
    ..chapterState = ChapterState()
    ..commentState = CommentState()
  ;
}

class DetailConnector extends ConnOp<ComicDetailState, DetailState>
 with ReselectMixin {
  @override
  DetailState computed(ComicDetailState state) {
    return state.detailState;
  }

  @override
  List factors(ComicDetailState state) {
    return [state.detailState];
  }

  @override
  void set(ComicDetailState state, DetailState subState) {
    state.detailState = subState;
  }
}

class ChapterConnector extends ConnOp<ComicDetailState, ChapterState>
    with ReselectMixin {
  @override
  ChapterState computed(ComicDetailState state) {
    return state.chapterState;
  }

  @override
  List factors(ComicDetailState state) {
    return [state.chapterState];
  }

  @override
  void set(ComicDetailState state, ChapterState subState) {
    state.chapterState = subState;
  }
}

class CommentConnector extends ConnOp<ComicDetailState, CommentState>
    with ReselectMixin {
  @override
  CommentState computed(ComicDetailState state) {
    return state.commentState;
  }

  @override
  List factors(ComicDetailState state) {
    return [state.commentState];
  }

  @override
  void set(ComicDetailState state, CommentState subState) {
    state.commentState = subState;
  }
}