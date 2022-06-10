import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/widgets/login_form.dart';
import 'package:flutter/material.dart';

class AdministradorScreen extends StatelessWidget {
  static const String name = 'AdministradorScreen';
  const AdministradorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        const HeadearPrincipal(),
        Positioned(
            top: size.height * 0.58,
            left: size.width * 0.32,
            child: LoginForm(
              hintText1: 'Usuario',
              color: Color(0xffDCB63A),
              image: SizedBox(
                height: 50,
                width: 340,
                child: Image(
                  image: AssetImage('assets/images/BannerAdministrador.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ))
      ],
    ));
  }
}
