
import 'package:flutter/material.dart';

import 'fancyloader/welcome.dart';

void main() {
  runApp(const MyApp());
}
const Color kDarkBackgroundColor = Color(0xFF121212);
class MyApp extends StatelessWidget {
  const MyApp({Key? key})
      : super(key: key); // Add 'Key?' to fix the constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'AI_Life',
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light().copyWith(
          background: kDarkBackgroundColor,
        ),
      ),
      home: const WelcomePage(
        title: 'AI-Life',
      ),
    );
  }
}
