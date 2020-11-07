import 'package:fish_redux/fish_redux.dart';

class DownloadState implements Cloneable<DownloadState> {

  @override
  DownloadState clone() {
    return DownloadState();
  }
}

DownloadState initState(Map<String, dynamic> args) {
  return DownloadState();
}
