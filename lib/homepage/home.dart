// import 'package:ailife/toolspage.dart';
// import 'package:flutter/material.dart';
// import 'package:simple_gradient_text/simple_gradient_text.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key, required String title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: '',
//       theme: ThemeData(
//         useMaterial3: true,
//         brightness: Brightness.light,
//         colorScheme: const ColorScheme.light().copyWith(
//           background: const Color(0xFF121212),
//         ),
//       ),
//       home: Scaffold(
//        // backgroundColor: Colors.transparent,
//         body: Center(
//           child: Expanded(
//             // Added Expanded widget
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(
//                       33.0), // Adjust the radius as per your requirement
//                   child: Image.asset(
//                     'assets/heroimage.png',
//                     width: 330, // Adjust the width as per your requirement
//                     height: 450, // Adjust the height as per your requirement
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(height: 40,),
//                 GradientText(
//                   'AI-Websites!',
//                   style: const TextStyle(
//                     fontSize: 40.0,
//                   ),
//                   colors: const [
//                     Colors.blue,
//                     Color.fromARGB(255, 235, 31, 12),
//                     Colors.teal,
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 2,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const Toolspage(),
//                       ),
//                     );
//                   },
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.resolveWith<Color>(
//                       (Set<MaterialState> states) {
//                         if (states.contains(MaterialState.pressed)) {
//                           return const Color.fromARGB(255, 251, 171,
//                               0); // Color when the button is pressed
//                         } else if (states.contains(MaterialState.hovered)) {
//                           return const Color(
//                               0xff0CFF60); // Color when the button is hovered
//                         }
//                         return const Color.fromARGB(
//                             255, 129, 105, 185); // Default color
//                       },
//                     ),
//                     foregroundColor:
//                         MaterialStateProperty.all<Color>(Colors.black),
//                     textStyle: MaterialStateProperty.all<TextStyle>(
//                       const TextStyle(
//                         fontSize: 14.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                             14.0), // Set the button's border radius. Change this value to adjust the border radius.
//                         // You can also set other properties like side color, width, etc.
//                       ),
//                     ),
//                   ),
//                   child: const Text('Find'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
