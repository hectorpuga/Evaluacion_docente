import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/models/usuarios_auth.dart';
import 'package:evaluacion_docente/providers/providers.dart';
import 'package:evaluacion_docente/screens/pantallafinal.dart';
import 'package:evaluacion_docente/screens/usuario_login.dart';
import 'package:evaluacion_docente/services/notificactions_service.dart';
import 'package:evaluacion_docente/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/services.dart';

class CuestionarioScreen extends StatelessWidget {
  final List arreglo = [];
  static String name = 'CuestionarioScreen';
  CuestionarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cuestionario = Provider.of<EncuestaProvider>(context);
    final pregunt = Provider.of<RespuestasProvider>(context);
    final usuarioAunth = Provider.of<LoginUser>(context).usuarioAuth;
    final cambioPantalla = Provider.of<CambioPantalla>(context);

    _generarPantallas(cuestionario.pregEncuesta, usuarioAunth!, cambioPantalla,
        pregunt, context);
    return arreglo[cambioPantalla.p];
  }

  _generarPantallas(List<String> cuestionario, UserAuth usuario,
      CambioPantalla p, RespuestasProvider r, BuildContext context) {
    List a = [];
    for (int i = 0; i < cuestionario.length; i++) {
      arreglo.add(Scaffold(
          body: Stack(
        children: [
          const HeadearPrincipal(),
          Positioned(
              top: 100,
              left: 320,
              child: Encabezado(
                pregunta: cuestionario[i],
                numP: '${i + 1}',
              )),
          Positioned(
            left: 200,
            top: 340,
            child: Row(
              children: [
                BaseCuestionario(
                  textoPrincipal: "Materia",
                  textos: usuario,
                ),
                BaseCuestionario(textoPrincipal: "Maestros", textos: usuario),
              ],
            ),
          ),
          const Positioned(top: 300, right: 250, child: OpcionesCuestionario()),
          Positioned(
              top: 650,
              left: 600,
              child: SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff14A0FF),
                  ),
                  child: const Text('Siguiente'),
                  onPressed: () {
                    if (r.opciones.length < usuario.usuario.maestros.length) {
                      NotificationService.showSnackbar(
                          'Faltan preguntas en contestar');
                    } else {
                      if (i == 47) {
                        Navigator.pushReplacementNamed(
                            context, FinalScreen.name);
                      } else {
                        try {
                          p.cambioPant(i + 1);
                          for (int j = 0;
                              j < usuario.usuario.maestros.length;
                              j++) {
                            r.addRespuesta(usuario.usuario.maestros[j].nombre,
                                r.opciones['${j + 1}']);
                          }
                        } catch (e) {
                          print(e);
                        }
                      }
                    }
                  },
                ),
              ))
        ],
      )));
    }
  }
}
