// To parse this JSON data, do
//
//     final encuesta = encuestaFromMap(jsonString);

import 'dart:convert';

import 'encuestaelement.dart';

class Encuesta {
  Encuesta({
    required this.total,
    required this.preguntas,
  });

  final int total;
  final List<Pregunta> preguntas;

  factory Encuesta.fromJson(String str) => Encuesta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Encuesta.fromMap(Map<String, dynamic> json) => Encuesta(
        total: json["total"],
        preguntas: List<Pregunta>.from(
            json["preguntas"].map((x) => Pregunta.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "total": total,
        "preguntas": List<dynamic>.from(preguntas.map((x) => x.toMap())),
      };
}

class Pregunta {
  Pregunta({
    required this.id,
    required this.encuesta,
    required this.v,
  });

  final String id;
  final List<EncuestaElement> encuesta;
  final int v;

  factory Pregunta.fromJson(String str) => Pregunta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pregunta.fromMap(Map<String, dynamic> json) => Pregunta(
        id: json["_id"],
        encuesta: List<EncuestaElement>.from(
            json["encuesta"].map((x) => EncuestaElement.fromMap(x))),
        v: json["__v"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "encuesta": List<dynamic>.from(encuesta.map((x) => x.toMap())),
        "__v": v,
      };
}
