import 'package:flutter/material.dart';
import 'package:q_lamansi_app/views/screens/home_screen.dart';

void main() {
  runApp(const QLamansiApp());
}

class QLamansiApp extends StatelessWidget {
  const QLamansiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Q-Lamansi',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: const HomeScreen(),
    );
  }
}