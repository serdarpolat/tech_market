import 'package:flutter/cupertino.dart';

class FirstLogin with ChangeNotifier {
  bool _firstLogin = false;

  bool get firstLogin => _firstLogin;

  changeFirstLogin(bool firstLogin) {
    _firstLogin = firstLogin;
    notifyListeners();
  }
}

class PagesState with ChangeNotifier {
  int _page = 0;

  int get page => _page;

  changePage(int page) {
    _page = page;
    notifyListeners();
  }
}
