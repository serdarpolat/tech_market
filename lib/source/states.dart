import 'package:flutter/cupertino.dart';

class FirstLogin with ChangeNotifier {
  bool _firstLogin = false;

  bool get firstLogin => _firstLogin;

  changeFirstLogin(bool firstLogin) {
    _firstLogin = firstLogin;
    notifyListeners();
  }
}
