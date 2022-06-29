import 'package:flutter/material.dart';

class OpcionesHome extends StatelessWidget {
  final String pathImage;
  final String pathRuta;
  const OpcionesHome(
      {Key? key, required this.pathImage, required this.pathRuta})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      child: SizedBox(
          width: size.width * 0.15,
          height: size.height * 0.2,
          child: Image(
            image: AssetImage(pathImage),
            fit: BoxFit.fill,
          )),
      onTap: () => {Navigator.pushNamed(context, pathRuta)},
    );
  }
}
