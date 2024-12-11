import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.deepOrange],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.orangeAccent, Colors.redAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(8, 8),
                blurRadius: 15,
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: CustomPaint(
                  size: const Size(220, 220),
                  painter: TrianglePainter(shadow: true),
                ),
              ),
              CustomPaint(
                size: const Size(200, 200),
                painter: TrianglePainter(),
              ),
              Positioned(
                top: 15,
                left: 15,
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [Colors.blueAccent, Colors.lightBlueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: Icon(
                    Icons.star,
                    size: 130,
                    color: Colors.white,
                  ),
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.white.withOpacity(0.3),
                size: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  final bool shadow;

  TrianglePainter({this.shadow = false});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..shader = shadow
          ? null
          : const LinearGradient(
              colors: [Colors.lightBlue, Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..color = shadow ? Colors.black.withOpacity(0.3) : Colors.blue
      ..style = PaintingStyle.fill;

    final Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();

    if (shadow) {
      canvas.drawPath(path.shift(const Offset(8, 8)), paint);
    } else {
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

void main() {
  runApp(const MaterialApp(home: Scaffold(body: ImmutableWidget())));
}
