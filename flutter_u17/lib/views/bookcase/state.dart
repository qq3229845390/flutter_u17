import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_u17/views/bookcase/book_component/state.dart';
import 'package:flutter_u17/views/bookcase/collect_component/component.dart';
import 'package:flutter_u17/views/bookcase/collect_component/state.dart';
import 'package:flutter_u17/views/bookcase/download_component/state.dart';

class BookcaseState implements Cloneable<BookcaseState> {

  BookState bookState;
  CollectState collectState;
  DownloadState downloadState;
  TabController tabController;

  @override
  BookcaseState clone() {
    return BookcaseState()
      ..bookState = bookState
      ..collectState = collectState
      ..downloadState = downloadState
      ..tabController = tabController
    ;
  }
}

BookcaseState initState(Map<String, dynamic> args) {
  return BookcaseState()
    ..bookState = BookState()
    ..collectState = CollectState()
    ..downloadState = DownloadState()
  ;
}

class CollectConnector extends ConnOp<BookcaseState, CollectState>
 with ReselectMixin {
  @override
  CollectState computed(BookcaseState state) {
    return state.collectState;
  }

  @override
  List factors(BookcaseState state) {
    return super.factors(state);
  }

  @override
  void set(BookcaseState state, CollectState subState) {
    super.set(state, subState);
  }
}

class BooKConnector extends ConnOp<BookcaseState, BookState>
    with ReselectMixin {
  @override
  BookState computed(BookcaseState state) {
    return state.bookState;
  }

  @override
  List factors(BookcaseState state) {
    return super.factors(state);
  }

  @override
  void set(BookcaseState state, BookState subState) {
    super.set(state, subState);
  }
}

class DownloadConnector extends ConnOp<BookcaseState, DownloadState>
    with ReselectMixin {
  @override
  DownloadState computed(BookcaseState state) {
    return state.downloadState;
  }

  @override
  List factors(BookcaseState state) {
    return super.factors(state);
  }

  @override
  void set(BookcaseState state, DownloadState subState) {
    super.set(state, subState);
  }
}