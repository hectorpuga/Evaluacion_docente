import 'package:flutter/material.dart';

class Encabezado extends StatelessWidget {
  const Encabezado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    TextStyle estilo = const TextStyle(color: Colors.white, fontSize: 15);
    final opciones = [
      "Altamente en desacuerdo",
      "en desacuerdo",
      "Indiferente",
      "De acuerdo",
      "Totalmente deacuerdo"
    ];

    return SizedBox(
      height: 200,
      width: 700,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text("Héctor Donaldo Maldona Gómez", style: estilo),
        Divider(
          color: color,
          height: 20,
          endIndent: 200,
          indent: 200,
        ),
        Text("EVALUACIÓN DOCENTE 2022", style: estilo),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          width: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              adornoCuadrado(
                15,
                15,
                2,
                "1",
              ),
              Text("Pregunta de", style: estilo),
              adornoCuadrado(15, 15, 2, "48")
            ],
          ),
        ),
        adornoCuadrado(50, 500, 5, ""),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < opciones.length; i++)
              adornoCuadrado(15, 15, 10, '${i + 1}', opcion: opciones[i]),
          ],
        )
      ]),
    );
  }
}

adornoCuadrado(double heigh, double width, double round, String text,
    {opcion = ''}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: heigh,
        width: width,
        decoration: BoxDecoration(
            gradient: width > 150
                ? LinearGradient(colors: [
                    Color(0xff3B3B3B),
                    Color(0xffAAAAAA),
                  ])
                : null,
            color: width < 100 ? Colors.white : null,
            borderRadius: BorderRadius.circular(round)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold),
        )),
      ),
      if (opcion != '')
        const SizedBox(
          width: 5,
        ),
      Text(opcion.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 15)),
      if (opcion != '')
        const SizedBox(
          width: 5,
        ),
    ],
  );
  ;
}
