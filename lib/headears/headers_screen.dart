import 'package:flutter/cupertino.dart';

class HeadearPrincipal extends StatelessWidget {
  const HeadearPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: const Color(0xff27333E),
          height: double.infinity,
          width: double.infinity,
          child: CustomPaint(painter: _HeadearPrincipalPainter()),
        ),
        Positioned(
          top: size.height * 0.01,
          child: SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.2,
              child: const Image(
                image: AssetImage('assets/images/LogoSecretaria.png'),
                fit: BoxFit.contain,
              )),
        ),
        Positioned(
          right: size.width * 0.31,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'SISTEMA DE EVALUACIÓN DOCENTE',
              style: TextStyle(
                  fontSize: size.width * 0.025,
                  color: const Color(0xffE3BC3A),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'INSTITUTO TECNOLÓGICO SUPERIOR DE EL MANTE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.015,
                  color: const Color.fromARGB(255, 255, 255, 255)),
            )
          ]),
        ),
        Positioned(
          top: size.height * 0.01,
          right: size.height * 0.04,
          child: SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.2,
              child: const Image(
                image: AssetImage('assets/images/LogoTec.png'),
                fit: BoxFit.contain,
              )),
        ),
      ],
    );
  }
}

class _HeadearPrincipalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    final paint2 = Paint();
    final paint3 = Paint();
    final paint4 = Paint();
    final paint5 = Paint();

    //Propiedades
    paint.color = const Color(0xff0164A7);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    paint2.color = const Color(0xff14A0FF);
    paint2.style = PaintingStyle.fill;
    paint2.strokeWidth = 5;

    paint3.color = const Color(0xff2D73A2);
    paint3.style = PaintingStyle.fill;
    paint3.strokeWidth = 5;

    paint4.color = const Color(0xff46A0DC);
    paint4.style = PaintingStyle.fill;
    paint4.strokeWidth = 5;

    paint5.color = const Color(0xff00538B);
    paint5.style = PaintingStyle.fill;
    paint5.strokeWidth = 5;

    final path = Path();
    final path2 = Path();
    final path3 = Path();
    final path4 = Path();
    final path5 = Path();

    //Dibujar con el path y el lapiz

    //Derecha superior
    path.moveTo(0, size.height * 0.10);
    path.lineTo(size.width * 0.15, size.height * 0.17);
    path.lineTo(size.width * 0.25, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

    path2.moveTo(size.width * 0.6, 0);
    path2.lineTo(size.width * 0.40, size.height * 0.35);
    path2.lineTo(size.width * 0.50, size.height * 0.45);
    path2.lineTo(size.width * 0.80, 0);

    canvas.drawPath(path2, paint2);

    path3.moveTo(size.width * 0.40, size.height * 0.35);
    path3.lineTo(size.width * 0.30, size.height * 0.50);
    path3.lineTo(size.width * 0.35, size.height * 0.54);
    path3.lineTo(size.width * 0.45, size.height * 0.40);

    canvas.drawPath(path3, paint3);

    path4.moveTo(size.width * 0.03, size.height * 0.30);
    path4.lineTo(size.width * 0.25, size.height * 0.50);
    path4.lineTo(size.width * 0.22, size.height * 0.54);
    path4.lineTo(size.width * 0.03, size.height * 0.38);
    path4.lineTo(size.width * 0.03, size.height * 0.30);

    canvas.drawPath(path4, paint4);

    path5.moveTo(size.width, size.height * 0.60);
    path5.lineTo(size.width * 0.70, size.height);
    path5.lineTo(size.width, size.height);

    canvas.drawPath(path5, paint5);
  }

  @override
  bool shouldRepaint(_HeadearPrincipalPainter oldDelegate) => true;
}
