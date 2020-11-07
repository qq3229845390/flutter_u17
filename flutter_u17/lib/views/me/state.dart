import 'package:fish_redux/fish_redux.dart';

class MeState implements Cloneable<MeState> {

  List cellList;

  @override
  MeState clone() {
    return MeState()
      ..cellList = cellList
    ;
  }
}

MeState initState(Map<String, dynamic> args) {
  List cellList = [
    {'icon': 'mine_vip', 'title': '我的VIP', 'padding': false},
    {'icon': 'mine_coin', 'title': '充值妖气币', 'padding': true},
    {'icon': 'mine_accout', 'title': '消费记录', 'padding': false},
    {'icon': 'mine_subscript', 'title': '我的订阅', 'padding': false},
    {'icon': 'mine_seal', 'title': '我的封印图', 'padding': true},
    {'icon': 'mine_message', 'title': '我的消息/优惠券', 'padding': false},
    {'icon': 'mine_cashew', 'title': '妖果商城', 'padding': false},
    {'icon': 'mine_freed', 'title': '在线阅读免流量', 'padding': true},
    {'icon': 'mine_feedBack', 'title': '帮助中心', 'padding': false},
    {'icon': 'mine_mail', 'title': '我要反馈', 'padding': false},
    {'icon': 'mine_judge', 'title': '给我们评分', 'padding': false},
    {'icon': 'mine_author', 'title': '成为作者', 'padding': false},
    {'icon': 'mine_setting', 'title': '设置', 'padding': true}
  ];

  return MeState()
    ..cellList = cellList
  ;
}
