import 'package:flutter/material.dart';

class BaseCuestionario extends StatelessWidget {
  final List<String> textos;
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
      width: 370,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textoPrincipal,
            style: TextStyle(
                color: color, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          for (int i = 0; i < textos.length; i++)
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 13.5),
                  child: Text(
                    textos[i],
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
