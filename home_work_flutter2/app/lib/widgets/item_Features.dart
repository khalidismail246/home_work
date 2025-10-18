import 'package:flutter/material.dart';

class ItemFeatures extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;
  const ItemFeatures({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: color.withValues(alpha: .1),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(10),

          child: Icon(icon, color: color),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
      ),
    );
  }
}
