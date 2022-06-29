import 'package:flutter/material.dart';

class CambioPantalla extends ChangeNotifier {
  int p = 0;

  cambioPant(int pa) {
    p = pa;
    notifyListeners();
  }
}
