import 'package:flutter/material.dart';

class RespuestasProvider extends ChangeNotifier {
  Map<String, List> respuestas = {};
  Map<String, int?> opciones = {};

  valorOpciones(int? valor, String posicion) {
    opciones[posicion] = valor;

    notifyListeners();
  }

  addRespuesta(String maestro, int? respuesta) {
    respuestas[maestro]!.add(respuesta);
  }

  limpiarRespuestas() {
    opciones = {};
    notifyListeners();
  }
}
