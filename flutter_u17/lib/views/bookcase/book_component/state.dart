import 'package:fish_redux/fish_redux.dart';

class BookState implements Cloneable<BookState> {

  @override
  BookState clone() {
    return BookState();
  }
}

BookState initState(Map<String, dynamic> args) {
  return BookState();
}
