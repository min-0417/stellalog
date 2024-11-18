import 'dart:math';
import 'package:flutter/material.dart';

class RandomDotsBackground extends StatefulWidget {
  const RandomDotsBackground({Key? key}) : super(key: key);

  @override
  _RandomDotsBackgroundState createState() => _RandomDotsBackgroundState();
}

class _RandomDotsBackgroundState extends State<RandomDotsBackground> {
  late List<Offset> _dots;
  final int numberOfDots = 100;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _generateRandomDots();
  }

  void _generateRandomDots() {
    final Random random = Random();
    _dots = List.generate(numberOfDots, (index) {
      return Offset(
        random.nextDouble() * MediaQuery.of(context).size.width,
        random.nextDouble() * MediaQuery.of(context).size.height,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Dots Background')),
      body: CustomPaint(
        painter: DotsPainter(dots: _dots),
        child: Container(),
      ),
    );
  }
}

class DotsPainter extends CustomPainter {
  final List<Offset> dots;
  final Paint dotPaint;

  DotsPainter({required this.dots})
      : dotPaint = Paint()
          ..color = Colors.white // 점의 색상
          ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    for (final dot in dots) {
      canvas.drawCircle(dot, 3.0, dotPaint); // 반지름은 3.0
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // 배경이 고정된 점들을 유지하려면 false
  }
}
