import 'package:flutter/material.dart';

class ConstBackgroundColor extends StatelessWidget {
  const ConstBackgroundColor({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.center,
          end: AlignmentGeometry.bottomRight,
          colors: [Color(0xff060B26), Color(0xff1A1F37)],
        ),
      ),
      child: child,
    );
  }
}
