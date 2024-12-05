import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now(); // 오늘 날짜를 선택된 날짜로 초기화
    _focusedDay = DateTime.now(); // 오늘 날짜를 포커스된 날짜로 초기화
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          locale: 'ko_KR',
          firstDay: DateTime.utc(2000, 1, 1),
          lastDay: DateTime.utc(3000, 12, 31),
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          calendarStyle: CalendarStyle(
            selectedDecoration: BoxDecoration(
              color: Colors.grey[700],
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: Colors.grey[600],
              shape: BoxShape.circle,
            ),
            defaultDecoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            weekendDecoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            leftChevronIcon:
                const Icon(Icons.chevron_left, color: Colors.white),
            rightChevronIcon:
                const Icon(Icons.chevron_right, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
