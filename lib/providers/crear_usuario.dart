import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/usuario.dart';

class CrearUsuarios extends ChangeNotifier {
  String nombre = '';
  String correo = '';
  String usuario = '';
  List mestros = [];
  String rol = '';
  String password = '';
  String id = '';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;

    notifyListeners();
  }

  bool isValiForm() {
    return formKey.currentState?.validate() ?? false;
  }
}
