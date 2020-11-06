import 'package:fish_redux/fish_redux.dart';

class ComicListState implements Cloneable<ComicListState> {

  String title;
  int argCon;
  String argName;
  String argValue;
  List comics;
  int page;

  @override
  ComicListState clone() {
    return ComicListState()
      ..title = title
      ..argCon = argCon
      ..argName = argName
      ..argValue = argValue
      ..comics = comics
      ..page = page
    ;
  }
}

ComicListState initState(Map<String, dynamic> args) {
  return ComicListState()
    ..title = args['title']
    ..argCon = args['argCon']
    ..argName = args['argName']
    ..argValue = args['argValue']
    ..comics = []
    ..page = 1
  ;
}
