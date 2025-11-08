import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({
    super.key,
    required this.onchange,
    required this.child,
    required this.color,
  });
  final VoidCallback onchange;
  final List<Widget> child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
          side: BorderSide(width: 1, color: Color(0xff8E84FF)),
        ),
      ),
      onPressed: onchange,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: child,
        ),
      ),
    );
  }
}
