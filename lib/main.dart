import 'package:flutter/material.dart';
import 'package:leave_management_app/screens/bottom_bar.dart';
import 'package:leave_management_app/screens/leave/leave_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber.shade300),
      debugShowCheckedModeBanner: false,
      home: const LeaveScreen(),
    );
  }
}
