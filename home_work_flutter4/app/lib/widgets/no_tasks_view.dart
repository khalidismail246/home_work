import 'package:flutter/material.dart';

class NoTasksView extends StatelessWidget {
  const NoTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: .5,
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline, color: Colors.green, size: 100),
            Text(
              "No tasks yet",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "Add a task to get started",
              style: TextStyle(color: Colors.grey.shade800, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
