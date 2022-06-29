import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/usuarios.dart';

class UsuarioProvider extends ChangeNotifier {
  final String _url = 'http://localhost:8080/api/usuarios';
  List<Usuario> usuarios = [];

  UsuarioProvider() {
    getUsuarios();
  }

  Future<bool> getUsuarios() async {
    final url = Uri.parse(_url);
    final resp = await http.get(url);

    // print(resp.statusCode);

    if (resp.statusCode == 200) {
      final arrusuarios = Usuarios.fromJson(resp.body);

      usuarios = arrusuarios.usuarios;
      notifyListeners();

      return true;
    } else {
      return false;
    }
  }

  Future<bool> postUsuarios(String nombre, String correo, List maestros,
      String usuario, String contra, String rol) async {
    List a = [];

    List m = [
      'Ingles',
      'Calculo integral',
      'Progrmacion Estructurada',
      'Contabilidad',
      'Lenguajes y automatas'
    ];
    for (var i = 0; i < maestros.length; i++) {
      a.add({"nombre": maestros[i], "materia": m[i]});
    }

    final Map<String, dynamic> authData = {
      "nombre": nombre,
      "correo": correo,
      "maestros": a,
      "user": usuario,
      "password": contra,
      "rol": rol
    };

    final url = Uri.parse(_url);
    final resp = await http.post(url,
        headers: {'Content-Type': 'application/json;chartset=UTF-8'},
        body: json.encode(authData));

    if (resp.statusCode == 200) {
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }

  Future<bool> putUsuarios(String nombre, String correo, List maestros,
      String usuario, String contra, String rol, String id) async {
    List a = [];

    List m = [
      'Ingles',
      'Calculo integral',
      'Progrmacion Estructurada',
      'Contabilidad',
      'Lenguajes y automatas'
    ];
    for (var i = 0; i < maestros.length; i++) {
      a.add({"nombre": maestros[i], "materia": m[i]});
    }

    final Map<String, dynamic> authData = {
      "nombre": nombre,
      "correo": correo,
      "maestros": a,
      "user": usuario,
      "password": contra,
      "rol": rol
    };

    final url = Uri.parse('${_url}/${id}');
    final resp = await http.put(url,
        headers: {'Content-Type': 'application/json;chartset=UTF-8'},
        body: json.encode(authData));

    if (resp.statusCode == 200) {
      notifyListeners();
      return true;
    } else {
      return false;
    }
  }
}
