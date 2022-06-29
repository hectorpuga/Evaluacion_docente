import 'package:evaluacion_docente/providers/login_form.dart';
import 'package:evaluacion_docente/services/login_users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/respuestas.dart';
import '../services/notificactions_service.dart';

class LoginForm extends StatelessWidget {
  final Widget image;
  final String hintText1;
  final Color color;
  final String ruta;
  final String tipo;

  const LoginForm({
    required this.tipo,
    required this.color,
    required this.ruta,
    Key? key,
    required this.image,
    required this.hintText1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    final usuarioAunth = Provider.of<LoginUser>(context);

    final pregunt = Provider.of<RespuestasProvider>(context, listen: false);
    for (int j = 0; j < usuarioAunth.maestros.length; j++) {
      pregunt.respuestas[usuarioAunth.maestros[j].nombre] = [];
    }

    return SizedBox(
      height: 250,
      width: 300,
      child: Form(
        key: loginForm.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            image,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(10)),
                  child: const Center(child: Text('1')),
                ),
                const Text(
                  'Ingrese tus datos',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autocorrect: false,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: hintText1,
                      labelStyle: const TextStyle(color: Colors.white)),
                  onChanged: (value) => loginForm.user = value),
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  autocorrect: false,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      hintTextDirection: TextDirection.rtl,
                      labelStyle: TextStyle(color: Colors.white)),
                  onChanged: (value) => loginForm.password = value),
            ),
            Container(
              margin: const EdgeInsets.only(left: 180),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: color),
                child: const Text('Iniciar sesión'),
                onPressed: () async {
                  final user = Provider.of<LoginUser>(context, listen: false);

                  final bool errorMessage =
                      await user.login(loginForm.user, loginForm.password);

                  if (!errorMessage) {
                    NotificationService.showSnackbar(
                        'Error, usuario incorrecto o contraseña');
                  } else {
                    if (tipo == 'admin') {
                      if (usuarioAunth.tipoUsuario == "ADMIN_ROLE") {
                        Navigator.pushNamed(context, ruta);
                      } else {
                        print('Usuario no admin');
                      }
                    } else {
                      Navigator.pushNamed(context, ruta);
                    }
                  }
                },
              ),
            ),
            SizedBox(
                child: TextButton(
              child: const Text('Regresar al inicio'),
              onPressed: () {
                Navigator.pushNamed(context, 'HomeScreen');
              },
            ))
          ],
        ),
      ),
    );
  }
}
