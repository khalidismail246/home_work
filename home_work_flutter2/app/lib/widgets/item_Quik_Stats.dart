import 'package:flutter/material.dart';

class ItemQuikStats extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final Color color;
  const ItemQuikStats({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      width: 115,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Icon(icon, color: color, size: 28),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(subTitle, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
