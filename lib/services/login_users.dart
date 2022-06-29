import 'package:evaluacion_docente/models/usuarios_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginUser extends ChangeNotifier {
  final String _url = 'http://localhost:8080/api/auth/login';
  UserAuth? usuarioAuth;
  String tipoUsuario = '';
  List maestros = [];

  Future<bool> login(String user, String password) async {
    final Map<String, dynamic> authData = {
      'user': user,
      'password': password,
    };

    final url = Uri.parse(_url);
    final resp = await http.post(url,
        headers: {'Content-Type': 'application/json;chartset=UTF-8'},
        body: json.encode(authData));

    if (resp.statusCode == 200) {
      usuarioAuth = UserAuth.fromJson(resp.body);
      tipoUsuario = usuarioAuth!.usuario.rol;
      maestros.addAll(usuarioAuth!.usuario.maestros);
      return true;
    } else {
      return false;
    }
  }
}
