import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BookcaseState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Center(
      child: Text('书架'),
    ),
  );
}
