import 'package:flutter/material.dart'; // Flutter의 Material Design 위젯 패키지 임포트
import 'package:table_calendar/table_calendar.dart'; // TableCalendar 패키지 임포트
import 'package:intl/intl.dart'; // DateFormat을 사용하기 위한 intl 패키지 임포트

// CalendarWidget 클래스를 정의하며 StatefulWidget을 상속
class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState(); // 상태를 생성하는 메서드
}

// _CalendarWidgetState 클래스 정의, CalendarWidget의 상태를 관리
class _CalendarWidgetState extends State<CalendarWidget> {
  late DateTime _selectedDay; // 선택된 날짜를 저장할 변수
  late DateTime _focusedDay; // 포커스된 날짜를 저장할 변수

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now(); // 현재 날짜를 선택된 날짜로 초기화
    _focusedDay = DateTime.now(); // 현재 날짜를 포커스된 날짜로 초기화
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          // locale: 'ko_KR', // 한국어 로케일 설정
          firstDay: DateTime.utc(2000, 1, 1), // 캘린더의 시작 날짜 설정
          lastDay: DateTime.utc(3000, 12, 31), // 캘린더의 마지막 날짜 설정
          focusedDay: _focusedDay, // 포커스된 날짜 설정
          selectedDayPredicate: (day) =>
              isSameDay(_selectedDay, day), // 선택된 날짜를 판단하는 함수
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay; // 새로운 선택된 날짜 업데이트
              _focusedDay = focusedDay; // 새로운 포커스된 날짜 업데이트
            });
          },
          calendarStyle: CalendarStyle(
            selectedDecoration: BoxDecoration(
              color: Colors.grey[700], // 선택된 날짜의 배경색
              shape: BoxShape.circle, // 선택된 날짜의 모양
            ),
            todayDecoration: BoxDecoration(
              color: Colors.grey[600], // 오늘 날짜의 배경색
              shape: BoxShape.circle, // 오늘 날짜의 모양
            ),
            defaultDecoration: BoxDecoration(
              color: Colors.transparent, // 기본 날짜의 배경색
              shape: BoxShape.circle, // 기본 날짜의 모양
            ),
            weekendDecoration: BoxDecoration(
              color: Colors.transparent, // 주말 날짜의 배경색
              shape: BoxShape.circle, // 주말 날짜의 모양
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false, // 형식 버튼 숨김
            titleCentered: true, // 타이틀을 중앙에 배치
            leftChevronIcon: const Icon(Icons.chevron_left,
                color: Colors.white), // 왼쪽 화살표 아이콘 설정
            rightChevronIcon: const Icon(Icons.chevron_right,
                color: Colors.white), // 오른쪽 화살표 아이콘 설정
            titleTextFormatter: (date, locale) =>
                DateFormat.yMMMM(locale).format(date), // 월 타이틀을 한국어로 포맷팅
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 20.0), // 타이틀 텍스트 스타일 설정
          ),
          calendarBuilders: CalendarBuilders(
            dowBuilder: (context, day) {
              final text = DateFormat.E('ko_KR').format(day); // 요일을 한국어로 포맷팅
              return Center(
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ); // 요일 텍스트 스타일 설정
            },
          ),
        ),
      ],
    );
  }
}
