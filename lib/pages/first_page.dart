import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Image.asset('assets/stellalog.png'),
              // Text(
              //   'StellaLog',
              //   style: TextStyle(
              //     fontSize: 48,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
            ),
            Positioned(
              bottom: 120,
              left: 60,
              child: Image.asset('assets/cloud.png'),
            ),
            Positioned(
              bottom: -150,
              right: -85,
              child: Image.asset('assets/moon.png'),
            ),
          ],
        ),
      ),
    );
  }
}
