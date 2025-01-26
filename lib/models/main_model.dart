import 'package:flutter/material.dart';

///This class extends ChangeNotifier allowing widgets to subscribe to changes being made to the 'model'.
class MainModel extends ChangeNotifier{
  int _counter = 0;
  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }
}
