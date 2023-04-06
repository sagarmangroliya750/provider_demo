import 'package:flutter/material.dart';

class myclass extends ChangeNotifier
{
  int sum=0;
  void total(String a, String b)
  {
    sum = int.parse(a)+int.parse(b);
    notifyListeners();
  }
}