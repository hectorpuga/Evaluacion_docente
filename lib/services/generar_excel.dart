import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Excel extends ChangeNotifier {
  Excel() {}
  getExcel() async {
    print("Hola");
    final url = Uri.parse('http://localhost:8080/api/excel/10');
    final resp = await http.get(url);

    print(resp.body);

    // print(resp.statusCode);

    if (resp.statusCode == 200) {
      print('excel creado');
      return true;
    } else {
      return false;
    }
  }
}
