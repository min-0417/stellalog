import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_http_request.dart';
import 'package:stellalog/pages/calender_page.dart';
import 'package:stellalog/pages/diary_page.dart';
import 'package:stellalog/pages/first_page.dart';
import 'package:stellalog/pages/random_dots.dart';

void main() async {
  await initializeDateFormatting();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: DiaryPage(),
      // home: CalenderPage(),
      // home: FirstPage(),
      // home: RandomDotsBackground(),
    );
  }
}

//안녕하세요 저는 바보 김민재에요 히히
