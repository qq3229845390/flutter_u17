import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/models/comic_detail_static_entity.dart';

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
