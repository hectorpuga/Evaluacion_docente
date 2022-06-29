import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/screens/screens.dart';
import 'package:evaluacion_docente/widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/login_form.dart';

class AdministradorLogin extends StatelessWidget {
  static const String name = 'AdministradorScreen';
  const AdministradorLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        const HeadearPrincipal(),
        ChangeNotifierProvider(
            create: (_) => LoginFormProvider(),
            child: Positioned(
                top: size.height * 0.58,
                left: size.width * 0.32,
                child: const LoginForm(
                  tipo: "admin",
                  ruta: Administrador.name,
                  hintText1: 'Usuario',
                  color: Color(0xffDCB63A),
                  image: SizedBox(
                    height: 50,
                    width: 340,
                    child: Image(
                      image:
                          AssetImage('assets/images/BannerAdministrador.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                )))
      ],
    ));
  }
}
