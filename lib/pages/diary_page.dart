import 'package:flutter/material.dart';
import '../components/calendar_widget.dart';

class DiaryPage extends StatelessWidget {
  const DiaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //   달력
            CalendarWidget(),
            //   메뉴 아이콘 추가
            Expanded(
              flex: 1,
              child: Row(),
            ),
            //   일기리스트
            Expanded(
              flex: 5,
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  _buildEventCard('15일', '새벽 하늘 밝은 달', '#달 #새벽 #감상'),
                  _buildEventCard('16일', '처음 하는 클라이밍', '#클라이밍 #운동 #취미'),
                  _buildEventCard('17일', '내일부터 공부하자', '#공부 #계획 #목표'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard(String date, String title, String tags) {
    return Card(
      color: Colors.grey[800],
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              tags,
              style: TextStyle(color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
//
// class DiaryPage extends StatefulWidget {
//   const DiaryPage({Key? key}) : super(key: key);
//
//   @override
//   _DiaryPageState createState() => _DiaryPageState();
// }
//
// class _DiaryPageState extends State<DiaryPage> {
//   late DateTime _selectedDay;
//   late DateTime _focusedDay;
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedDay = DateTime.now();
//     _focusedDay = DateTime.now();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('10월'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: const Icon(Icons.arrow_forward),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           TableCalendar(
//             firstDay: DateTime.utc(2000, 1, 1),
//             lastDay: DateTime.utc(9999, 12, 31),
//             focusedDay: _focusedDay,
//             selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//             onDaySelected: (selectedDay, focusedDay) {
//               setState(() {
//                 _selectedDay = selectedDay;
//                 _focusedDay = focusedDay; // update focused day
//               });
//             },
//             calendarStyle: CalendarStyle(
//               selectedDecoration: BoxDecoration(
//                 color: Colors.grey[700],
//                 shape: BoxShape.circle,
//               ),
//               todayDecoration: BoxDecoration(
//                 color: Colors.grey[600],
//                 shape: BoxShape.circle,
//               ),
//               defaultDecoration: BoxDecoration(
//                 color: Colors.transparent,
//                 shape: BoxShape.circle,
//               ),
//               weekendDecoration: BoxDecoration(
//                 color: Colors.transparent,
//                 shape: BoxShape.circle,
//               ),
//             ),
//             headerStyle: HeaderStyle(
//               formatButtonVisible: false,
//               titleCentered: true,
//               leftChevronIcon:
//                   const Icon(Icons.chevron_left, color: Colors.white),
//               rightChevronIcon:
//                   const Icon(Icons.chevron_right, color: Colors.white),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: ListView(
//               padding: const EdgeInsets.all(16.0),
//               children: [
//                 _buildEventCard('15일', '새벽 하늘 밝은 달', '#달 #새벽 #감상'),
//                 _buildEventCard('16일', '처음 하는 클라이밍', '#클라이밍 #운동 #취미'),
//                 _buildEventCard('17일', '내일부터 공부하자', '#공부 #계획 #목표'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildEventCard(String date, String title, String tags) {
//     return Card(
//       color: Colors.grey[800],
//       margin: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               date,
//               style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               title,
//               style: const TextStyle(color: Colors.white, fontSize: 16),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               tags,
//               style: const TextStyle(color: Colors.white54),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
