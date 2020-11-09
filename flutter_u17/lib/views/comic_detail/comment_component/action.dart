import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_u17/models/comment_entity.dart';

//TODO replace with your own action
enum CommentAction { action,

  updateComment,
}

class CommentActionCreator {
  static Action onAction() {
    return const Action(CommentAction.action);
  }
  static Action updateComment(CommentEntity entity) {
    return Action(CommentAction.updateComment, payload: entity);
  }
}
