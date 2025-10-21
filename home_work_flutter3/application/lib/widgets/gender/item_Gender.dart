import 'package:flutter/material.dart';

class itemGender extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Color color;

  const itemGender({super.key, this.icon, this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: color,
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 125),
          Text(
            title ?? "",
            style: TextStyle(color: Colors.grey.withValues(alpha: 1)),
          ),
        ],
      ),
    );
  }
}
