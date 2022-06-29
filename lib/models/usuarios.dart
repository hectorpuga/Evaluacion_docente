import 'dart:convert';

class Usuarios {
  Usuarios({
    required this.total,
    required this.usuarios,
  });

  final int total;
  final List<Usuario> usuarios;

  factory Usuarios.fromJson(String str) => Usuarios.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Usuarios.fromMap(Map<String, dynamic> json) => Usuarios(
        total: json["total"],
        usuarios:
            List<Usuario>.from(json["usuarios"].map((x) => Usuario.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "total": total,
        "usuarios": List<dynamic>.from(usuarios.map((x) => x.toMap())),
      };
}

class Usuario {
  Usuario({
    required this.nombre,
    required this.correo,
    required this.user,
    required this.rol,
    required this.maestros,
    required this.estado,
    required this.uid,
  });

  final String nombre;
  final String correo;
  final String user;
  final String rol;
  final List<Maestro> maestros;
  final bool estado;
  final String uid;

  factory Usuario.fromJson(String str) => Usuario.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
        nombre: json["nombre"],
        correo: json["correo"],
        user: json["user"],
        rol: json["rol"],
        maestros:
            List<Maestro>.from(json["maestros"].map((x) => Maestro.fromMap(x))),
        estado: json["estado"],
        uid: json["uid"],
      );

  Map<String, dynamic> toMap() => {
        "nombre": nombre,
        "correo": correo,
        "user": user,
        "rol": rol,
        "maestros": List<dynamic>.from(maestros.map((x) => x.toMap())),
        "estado": estado,
        "uid": uid,
      };
}

class Maestro {
  Maestro({
    required this.nombre,
    required this.materia,
  });

  final String nombre;
  final String materia;

  factory Maestro.fromJson(String str) => Maestro.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Maestro.fromMap(Map<String, dynamic> json) => Maestro(
        nombre: json["nombre"],
        materia: json["materia"],
      );

  Map<String, dynamic> toMap() => {
        "nombre": nombre,
        "materia": materia,
      };
}
