import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';
import 'package:flutter_u17/views/comic_detail/chapter_component/state.dart';
import 'package:flutter_u17/views/comic_detail/comment_component/state.dart';
import 'package:flutter_u17/views/comic_detail/detail_component/state.dart';

class ComicDetailState implements Cloneable<ComicDetailState> {

  int comicid;
  ComicDetailStaticEntity staticEntity;
  TabController tabController;

  @override
  ComicDetailState clone() {
    return ComicDetailState()
      ..comicid = comicid
      ..staticEntity = staticEntity
      ..tabController = tabController
    ;
  }
}

ComicDetailState initState(Map<String, dynamic> args) {
  return ComicDetailState()
    ..comicid = args['comicid']??''
    ..staticEntity = null
  ;
}

class DetailConnector extends ConnOp<ComicDetailState, DetailState>
 with ReselectMixin {
  @override
  DetailState computed(ComicDetailState state) {
    return DetailState();
  }

  @override
  List factors(ComicDetailState state) {
    return super.factors(state);
  }

  @override
  void set(ComicDetailState state, DetailState subState) {
  }
}

class ChapterConnector extends ConnOp<ComicDetailState, ChapterState>
    with ReselectMixin {
  @override
  ChapterState computed(ComicDetailState state) {
    return ChapterState()
      ..chapterList = state.staticEntity==null?[]:
      state.staticEntity.chapterList;
  }

  @override
  List factors(ComicDetailState state) {
    return super.factors(state);
  }

  @override
  void set(ComicDetailState state, ChapterState subState) {
  }
}

class CommentConnector extends ConnOp<ComicDetailState, CommentState>
    with ReselectMixin {
  @override
  CommentState computed(ComicDetailState state) {
    return CommentState();
  }

  @override
  List factors(ComicDetailState state) {
    return super.factors(state);
  }

  @override
  void set(ComicDetailState state, CommentState subState) {
  }
}