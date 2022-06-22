import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final Widget image;
  final String hintText1;
  final Color color;
  final String ruta;

  const LoginForm({
    required this.color,
    required this.ruta,
    Key? key,
    required this.image,
    required this.hintText1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 300,
      child: Form(
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: false,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: hintText1,
                    labelStyle: const TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 30,
              width: 300,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: false,
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    hintTextDirection: TextDirection.rtl,
                    labelStyle: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 180),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: color),
                child: const Text('Iniciar sesión'),
                onPressed: () {
                  Navigator.pushNamed(context, ruta);
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
