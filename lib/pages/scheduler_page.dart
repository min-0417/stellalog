import 'package:flutter/material.dart';

class SchedulerPage extends StatelessWidget {
  SchedulerPage({super.key});

  final List<String> profileImages = [
    'assets/benchpress.jpeg',
    'assets/chinup.jpeg',
    'assets/donkey_kick.jpeg',
    'assets/dumbell_curl.jpeg',
    'assets/lunge.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stories'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: profileImages.map((imageUrl) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoryPage(imageUrl: imageUrl),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class StoryPage extends StatelessWidget {
  final String imageUrl;

  StoryPage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story'),
      ),
      body: Center(
        child: Image.asset(imageUrl),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class SchedulerPage extends StatelessWidget {
//   SchedulerPage({super.key});
//
//   final List<String> profileImages = [
//     'assets/benchpress.jpeg'
//         'assets/chinup.jpeg'
//         'assets/donkey_kick.jpeg'
//         'dumbell_curl.jpeg'
//         'lunge.jpeg'
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Stories'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: profileImages.map((imageUrl) {
//               return Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => StoryPage(imageUrl: imageUrl),
//                       ),
//                     );
//                   },
//                   child: CircleAvatar(
//                     radius: 35,
//                     backgroundImage: NetworkImage(imageUrl),
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class StoryPage extends StatelessWidget {
//   final String imageUrl;
//   StoryPage({required this.imageUrl});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Story'),
//       ),
//       body: Center(
//         child: Image.network(imageUrl),
//       ),
//     );
//   }
// }
