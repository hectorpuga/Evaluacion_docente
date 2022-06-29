import 'package:flutter/material.dart';

class EncabezadoSimples extends StatelessWidget {
  const EncabezadoSimples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    TextStyle estilo = const TextStyle(color: Colors.white, fontSize: 15);
    return Container(
      margin: const EdgeInsets.only(left: 350, top: 95),
      width: 600,
      height: 150,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Divider(
          color: color,
          height: 20,
          endIndent: 200,
          indent: 200,
        ),
        Text("EVALUACIÓN DOCENTE 2022", style: estilo),
        const SizedBox(
          height: 40,
        ),
        const SizedBox(
          height: 50,
          width: 550,
          child: Image(
            image: AssetImage("assets/images/BannerActualizar.png"),
            fit: BoxFit.fill,
          ),
        )
      ]),
    );
  }
}
