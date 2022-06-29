import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/providers/crear_usuario.dart';
import 'package:evaluacion_docente/services/notificactions_service.dart';
import 'package:evaluacion_docente/services/usuario.dart';
import 'package:evaluacion_docente/widgets/encabezado_simple.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActulizarBuscar extends StatelessWidget {
  static const String name = "ActualizarBuscar";
  const ActulizarBuscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List datos = [
      'Nombre',
      'Correo',
      'Maestros',
      'Usuario',
      'Contraseña',
      'Rol'
    ];
    final loginForm = Provider.of<CrearUsuarios>(context);
    final usuarios = Provider.of<UsuarioProvider>(context);

    return Scaffold(
        body: Stack(
      children: [
        HeadearPrincipal(),
        EncabezadoSimples(),
        Positioned(
          top: 300,
          left: 500,
          child: SizedBox(
            height: 380,
            width: 300,
            child: Form(
              key: loginForm.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 400,
                    height: 50,
                    child: Image(
                      image: AssetImage(
                        'assets/images/BannerUsuario.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 39, 69, 109),
                            borderRadius: BorderRadius.circular(10)),
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
                          labelText: 'Id',
                          labelStyle: const TextStyle(color: Colors.white)),
                      onChanged: (value) => loginForm.id = value,
                    ),
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
                          labelText: 'Nombre',
                          labelStyle: const TextStyle(color: Colors.white)),
                      onChanged: (value) => loginForm.nombre = value,
                    ),
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
                          labelText: 'Correo',
                          labelStyle: const TextStyle(color: Colors.white)),
                      onChanged: (value) => loginForm.correo = value,
                    ),
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
                          labelText: 'Maestros',
                          labelStyle: const TextStyle(color: Colors.white)),
                      onChanged: (value) =>
                          loginForm.mestros = value.split(','),
                    ),
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
                          labelText: 'Usuario',
                          labelStyle: const TextStyle(color: Colors.white)),
                      onChanged: (value) => loginForm.usuario = value,
                    ),
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
                          labelText: 'Contraseña',
                          labelStyle: const TextStyle(color: Colors.white)),
                      onChanged: (value) => loginForm.password = value,
                    ),
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
                          labelText: 'Rol',
                          labelStyle: const TextStyle(color: Colors.white)),
                      onChanged: (value) => loginForm.rol = value,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 180),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 39, 69, 109)),
                      child: const Text('Actualizar'),
                      onPressed: () async {
                        final datos = await usuarios.putUsuarios(
                            loginForm.nombre,
                            loginForm.correo,
                            loginForm.mestros,
                            loginForm.usuario,
                            loginForm.password,
                            loginForm.rol,
                            loginForm.id);

                        if (!datos) {
                          NotificationService.showSnackbar(
                              'Usuario no encontrado');
                        }
                      },
                    ),
                  ),
                  SizedBox(
                      child: TextButton(
                    child: const Text('Regresar al inicio'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ))
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
