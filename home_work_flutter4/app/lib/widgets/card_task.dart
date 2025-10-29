import 'package:app/models/task_model.dart';
import 'package:flutter/material.dart';

class CardTask extends StatefulWidget {
  const CardTask({super.key, required this.taskModel, required this.onDelete});
  final TaskModel taskModel;
  final VoidCallback onDelete;

  @override
  State<CardTask> createState() => _CardTaskState();
}

class _CardTaskState extends State<CardTask> {
  bool isFinishTask = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: isFinishTask,
                onChanged: (value) {
                  isFinishTask = value!;
                  setState(() {});
                },
                activeColor: Colors.green,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.taskModel.task,
                      softWrap: true,
                      style: TextStyle(
                        decoration: isFinishTask
                            ? TextDecoration.lineThrough
                            : null,
                        color: isFinishTask ? Colors.grey : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Created : ${widget.taskModel.createdAt.day}/${widget.taskModel.createdAt.month}/${widget.taskModel.createdAt.year}",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Opacity(
                opacity: .8,
                child: IconButton(
                  onPressed: widget.onDelete,
                  icon: Icon(Icons.delete_outline, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
