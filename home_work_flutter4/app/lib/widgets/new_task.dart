import 'package:flutter/material.dart';

class NewTask extends StatefulWidget {
  const NewTask({super.key, required this.addTask});
  final ValueChanged<String> addTask;

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final TextEditingController _controller = TextEditingController();
  String task = "";
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.white,
      child: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        child: Row(
          spacing: 16,
          children: [
            Expanded(
              child: TextField(
                onChanged: (value) {
                  task = value;
                },
                controller: _controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  hintText: "Add a new task ...",
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (task.trim().isNotEmpty) {
                  widget.addTask(task);
                  _controller.clear();
                  setState(() {});
                }
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey.withValues(alpha: .2),
                radius: 25,
                child: Icon(
                  Icons.add,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
