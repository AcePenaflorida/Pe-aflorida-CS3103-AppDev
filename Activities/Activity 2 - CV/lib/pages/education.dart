// // import 'package:flutter/material.dart';

// class EducationPage extends StatelessWidget {
//   const EducationPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Education Highlights",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Colors.blue, Colors.lightBlueAccent],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             _collegeCard(
//               'College',
//               'Batangas State University',
//               'Graduation Year: TBA',
//             ),

//             _educationCard(
//               'Senior High School',
//               'Nicolites Montessori School',
//               'Graduation Year: 2022',
//             ),

//             _educationCard(
//               'High School',
//               'DFLCMCFI',
//               'Graduation Year: 2020',
//             ),

//             _educationCard(
//               'Elementary',
//               'Victoria Reyes',
//               'Graduation Year: 2016',
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _collegeCard(String level, String schoolName, String graduationYear) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16.0),
//       height: 200, 
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12.0),
//         image: const DecorationImage(
//           image: AssetImage('lib/assets/bsu.jpg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12.0),
//           color: Colors.black.withOpacity(0.6),
//         ),
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               level,
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               schoolName,
//               style: const TextStyle(
//                 fontSize: 18,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 8.0),
//             Text(
//               graduationYear,
//               style: const TextStyle(
//                 fontSize: 16,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }


//   Widget _educationCard(String level, String schoolName, String graduationYear) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16.0),
//       padding: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 8.0,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             level,
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 8.0),
//           Text(
//             schoolName,
//             style: TextStyle(
//               color: Colors.grey[700],
//               fontSize: 15,
//             ),
//           ),
//           const SizedBox(height: 8.0),
//           Text(
//             graduationYear,
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 15,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
