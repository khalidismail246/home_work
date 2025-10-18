import 'package:app/widgets/features.dart';
import 'package:app/widgets/quick_Stats.dart';
import 'package:app/widgets/setting_And_profile_buttons.dart';
import 'package:app/widgets/welcome_Container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFEF7FF),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            spacing: 24,
            children: [
              WelcomeContainer(),
              QuickStats(),
              Features(),
              Spacer(flex: 4),
              SettingAndProfileButtons(),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
