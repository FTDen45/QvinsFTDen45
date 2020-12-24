import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class MyModel with ChangeNotifier {
  //String _foo;
  num _numer = 0;
  bool _girls = true;
  bool _boys = false;
  bool _any = false;
  num _page = 0;
  num _selectedIndex = 2;
  num _numBar = 0;
  bool _messageFriends = true;

  bool _meropriatie = false;
  bool _people = false;
  bool _main = true;
  bool _message = false;
  bool _profile = false;

  //String get foo => _foo;
  int get numer {
    return _numer;
  }

  bool get girls {
    return _girls;
  }

  bool get boys {
    return _boys;
  }

  bool get any {
    return _any;
  }

  bool get meropriatie {
    return _meropriatie;
  }

  bool get people {
    return _people;
  }

  bool get main {
    return _main;
  }

  bool get message {
    return _message;
  }

  bool get profile {
    return _profile;
  }

  num get page {
    return _page;
  }

  num get selectedIndex {
    return _selectedIndex;
  }

  num get numBar {
    return _numBar;
  }

  bool get messageFriends {
    return _messageFriends;
  }

  void set numer(num numer) {
    _numer = numer;
    notifyListeners();
  }

  void set girls(bool girls) {
    _girls = girls;
    notifyListeners();
  }

  void set boys(bool boys) {
    _boys = boys;
    notifyListeners();
  }

  void set any(bool any) {
    _any = any;
    notifyListeners();
  }

  void set meropriatie(bool meropriatie) {
    _meropriatie = meropriatie;
    notifyListeners();
  }

  void set people(bool people) {
    _people = people;
    notifyListeners();
  }

  void set main(bool main) {
    _main = main;
    notifyListeners();
  }

  void set message(bool message) {
    _message = message;
    notifyListeners();
  }

  void set profile(bool profile) {
    _profile = profile;
    notifyListeners();
  }

  void set page(int page) {
    _page = page;
    notifyListeners();
  }

  void set selectedIndex(num selectedIndex) {
    _selectedIndex = selectedIndex;
    notifyListeners();
  }

  void set numBar(num numBar) {
    _numBar = numBar;
    notifyListeners();
  }

  void set messageFriends(bool messageFriends) {
    _messageFriends = messageFriends;
    notifyListeners();
  }
}
