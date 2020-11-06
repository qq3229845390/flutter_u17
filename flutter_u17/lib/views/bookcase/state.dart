import 'package:fish_redux/fish_redux.dart';

class BookcaseState implements Cloneable<BookcaseState> {

  @override
  BookcaseState clone() {
    return BookcaseState();
  }
}

BookcaseState initState(Map<String, dynamic> args) {
  return BookcaseState();
}
