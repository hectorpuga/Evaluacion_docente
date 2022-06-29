import 'package:evaluacion_docente/models/usuarios_auth.dart';
import 'package:flutter/material.dart';

class BaseCuestionario extends StatelessWidget {
  final UserAuth? textos;
  final String textoPrincipal;

  const BaseCuestionario({
    Key? key,
    required this.textoPrincipal,
    required this.textos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    return SizedBox(
      width: 320,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textoPrincipal,
            style: TextStyle(
                color: color, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          for (int i = 0; i < textos!.usuario.maestros.length; i++)
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 13.5),
                  child: Text(
                    textoPrincipal == "Materia"
                        ? textos!.usuario.maestros[i].materia
                        : textos!.usuario.maestros[i].nombre,
                    style: TextStyle(color: color, fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
