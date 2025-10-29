import 'package:app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyTasksApp());
}

class MyTasksApp extends StatelessWidget {
  const MyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
