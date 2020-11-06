

import 'package:flutter/cupertino.dart';

class KeepAliveWidget extends StatefulWidget {
  final Widget child;

  const KeepAliveWidget({Key key, this.child}) : super(key: key);

  @override
  _KeepAliveWidget createState() => _KeepAliveWidget();

}

class _KeepAliveWidget extends State<KeepAliveWidget> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
