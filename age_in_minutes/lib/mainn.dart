import 'package:age_in_minutes/main.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
// void main() => runApp(MyApp());

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String _dateInYears = "";

//   void _setDate(DateTime date) {
//     setState(() {
//       _dateInYears =
//           (DateTime.now().difference(date).inDays / 365).toInt().toString();
//     });
//     print("tap");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Age in minutes",
//             style: TextStyle(fontSize: 24),
//           ),
//           backgroundColor: Colors.purple,
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               const SizedBox(height: 50),
//               Text(
//                 _dateInYears,
//                 style: TextStyle(fontSize: 26),
//               ),
//               OutlinedButton(
//                 onPressed: () async {
//                   DateTime? pickedDate = await showDatePicker(
//                     context: context,
//                     initialDate: DateTime.now(),
//                     firstDate: DateTime(1950),
//                     lastDate: DateTime(2100),
//                   );
//                   if (pickedDate != null) {
//                     _setDate(pickedDate);
//                   }
//                 },
//                 child: Text("Add"),
//                 style: OutlinedButton.styleFrom(
//                   foregroundColor: Colors.purple,
//                   side: BorderSide(
//                     color: Colors.purple,
//                   ),
//                 ),
//               ),
//               // ElevatedButton(onPressed: _setDate, child: Text("Done")),
//               const SizedBox(height: 20),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.purple.shade200,
//                     width: 5,
//                   ),
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.purple.shade100,
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 margin: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Text("Years: "),
//                     Text("$_dateInYears Years"),
//                   ],
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.purple.shade200,
//                     width: 5,
//                   ),
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.purple.shade100,
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 margin: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Text("Years: "),
//                     Text("27 Years"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
