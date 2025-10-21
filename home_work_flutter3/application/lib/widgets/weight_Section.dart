import 'package:flutter/material.dart';

class WeightSection extends StatelessWidget {
  const WeightSection({
    super.key,
    required this.weight,
    required this.onWeightChanged,
  });

  final int weight;
  final ValueChanged<int> onWeightChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff17172F),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                "$weight",
                style: const TextStyle(
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
                    onTap: () {
                      if (weight > 0) {
                        onWeightChanged(weight - 1);
                      }
                    },
                    child: const CircleAvatar(
                      radius: 26,
                      backgroundColor: Color(0xff4B4E5F),
                      child: Icon(Icons.remove, color: Colors.white, size: 32),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onWeightChanged(weight + 1);
                    },
                    child: const CircleAvatar(
                      radius: 26,
                      backgroundColor: Color(0xff4B4E5F),
                      child: Icon(Icons.add, color: Colors.white, size: 32),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
