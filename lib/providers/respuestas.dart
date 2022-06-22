import 'package:flutter/material.dart';

class RespuestasProvider extends ChangeNotifier {
  Map<String, List<int>> respuestas = {};
  Map<String, int?> opciones = {
    "1": null,
    "2": null,
    "3": null,
    "4": null,
    "5": null
  };

  cantidadMaestros(int cantidad, String maestro) {
    for (var i = 0; i < cantidad; i++) {
      respuestas[maestro] = [];
    }
  }

  valorOpciones(int? valor, String posicion) {
    opciones[posicion] = valor;
    print(opciones);
    notifyListeners();
  }

  addRespuesta(String maestro, int respuesta) {
    respuestas[maestro]!.add(respuesta);
  }
}
