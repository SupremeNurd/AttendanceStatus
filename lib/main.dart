import 'package:flutter/material.dart';
import 'package:dev/screens/bottom_nav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = '출석신청 현황';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: AttendanceStatus(),
    );
  }
}
