import 'package:evaluacion_docente/models/encuesta.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EncuestaProvider extends ChangeNotifier {
  final String _url = 'http://localhost:8080/api/encuesta';
  List<String> pregEncuesta = [];

  EncuestaProvider() {
    getEncuesta();
  }

  Future<bool> getEncuesta() async {
    final url = Uri.parse(_url);
    final response = await http.get(url);
    final encuesta = Encuesta.fromJson(response.body);

    for (var i = 0; i < encuesta.preguntas[0].encuesta.length; i++) {
      pregEncuesta.addAll(encuesta.preguntas[0].encuesta[i].preguntas);
    }
    print(pregEncuesta.length);

    if (response.statusCode == 200) {
      print('Preguntas Exitosas');
      return true;
    } else {
      return false;
    }
  }
}
