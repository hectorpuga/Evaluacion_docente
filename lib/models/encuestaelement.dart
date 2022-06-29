import 'dart:convert';

class EncuestaElement {
  EncuestaElement({
    required this.name,
    required this.preguntas,
  });

  final String name;
  final List<String> preguntas;

  factory EncuestaElement.fromJson(String str) =>
      EncuestaElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EncuestaElement.fromMap(Map<String, dynamic> json) => EncuestaElement(
        name: json["name"],
        preguntas: List<String>.from(json["preguntas"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "preguntas": List<dynamic>.from(preguntas.map((x) => x)),
      };
}
