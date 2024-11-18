import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(backgroundImage: AssetImage('assets/profile1.jpg')),
              CircleAvatar(backgroundImage: AssetImage('assets/profile2.jpg')),
              CircleAvatar(backgroundImage: AssetImage('assets/profile3.jpg')),
              CircleAvatar(backgroundImage: AssetImage('assets/profile4.jpg')),
              CircleAvatar(backgroundImage: AssetImage('assets/profile5.jpg')),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('Start'),
          ),
          Text('00 : 00 : 00'),
          SizedBox(height: 10),
          // CalendarWidget(),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('일정 추가 +'),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Checkbox(value: false, onChanged: (bool? value) {}),
                  title: Text('일정'),
                  trailing: Text('10:00 - 11:30'),
                ),
                ListTile(
                  leading: Checkbox(value: false, onChanged: (bool? value) {}),
                  title: Text(''),
                  trailing: Text(''),
                ),
                ListTile(
                  leading: Checkbox(value: false, onChanged: (bool? value) {}),
                  title: Text(''),
                  trailing: Text(''),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }
}

// class CalendarWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TableCalendar(
//       firstDay: DateTime.utc(2020, 10, 16),
//       lastDay: DateTime.utc(2030, 3, 14),
//       focusedDay: DateTime.now(),
//       calendarFormat: CalendarFormat.month,
//       startingDayOfWeek: StartingDayOfWeek.sunday,
//       daysOfWeekVisible: true,
//       headerStyle: HeaderStyle(
//         formatButtonVisible: false,
//         titleCentered: true,
//       ),
//       calendarStyle: CalendarStyle(
//         todayDecoration: BoxDecoration(
//           color: Colors.grey,
//           shape: BoxShape.circle,
//         ),
//         selectedDecoration: BoxDecoration(
//           color: Colors.blue,
//           shape: BoxShape.circle,
//         ),
//       ),
//     );
//   }
// }
