import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comment_entity.dart';

class CommentState implements Cloneable<CommentState> {

  CommentEntity commentEntity = CommentEntity();

  @override
  CommentState clone() {
    return CommentState()
      ..commentEntity = commentEntity
    ;
  }
}

CommentState initState(Map<String, dynamic> args) {
  return CommentState();
}
