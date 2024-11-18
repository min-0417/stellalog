import 'package:flutter/material.dart';
import 'package:stellalog/pages/calender_page.dart';
import 'package:stellalog/pages/first_page.dart';
import 'package:stellalog/pages/random_dots.dart';
import 'package:stellalog/pages/scheduler_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: SchedulerPage(),
      // home: CalenderPage(),
      home: FirstPage(),
      // home: Example(),
      // home: RandomDotsBackground(),
    );
  }
}
