import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BookState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Center(
      child: Text('收藏'),
    ),
  );
}
