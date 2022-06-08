import 'package:flutter/cupertino.dart';

class HeadearPrincipal extends StatelessWidget {
  const HeadearPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff27333E),
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(painter: _HeadearPrincipalPainter()),
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
