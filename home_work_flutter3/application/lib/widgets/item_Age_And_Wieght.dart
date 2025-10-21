import 'package:flutter/material.dart';

class ItemAgeAndWieght extends StatelessWidget {
  const ItemAgeAndWieght({super.key, required this.text, required this.weight});
  final String text;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff17172F),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WEIGHT",
            style: TextStyle(
              color: Colors.grey.withValues(alpha: 1),
              fontSize: 16,
            ),
          ),
          Text(
            "60",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Color(0xff4B4E5F),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Color(0xff4B4E5F),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
