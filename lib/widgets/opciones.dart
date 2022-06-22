import 'package:evaluacion_docente/providers/respuestas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Opciones extends StatelessWidget {
  const Opciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    final respuestas = Provider.of<RespuestasProvider>(context);
    return SizedBox(
      width: 160,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Text(
              'Calificación',
              style: TextStyle(
                  color: color, fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 1; i < 6; i++)
                Container(
                  margin: const EdgeInsets.only(bottom: 8, top: 10),
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color,
                  ),
                  child: Center(child: Text('$i')),
                )
            ],
          ),
          for (int i = 1; i < 9; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 1; j < 6; j++)
                  Radio<int>(
                    autofocus: false,
                    value: j,
                    fillColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.disabled)) color;
                      return Colors.white;
                    }),
                    groupValue: respuestas.opciones['$i'],
                    onChanged: (value) {
                      respuestas.valorOpciones(value, '$i');
                    },
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
