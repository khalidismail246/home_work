import 'package:flutter/material.dart';

class TransferButton extends StatelessWidget {
  const TransferButton({
    super.key,
    required this.color,
    required this.content,
    required this.onchange,
  });
  final Color color;
  final List<Widget> content;
  final VoidCallback onchange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onchange,
      child: Container(
        decoration: BoxDecoration(
          border: BoxBorder.all(color: Color(0xffB9B4FD)),
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: Row(
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            children: content,
          ),
        ),
      ),
    );
  }
}
