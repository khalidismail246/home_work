import 'package:app/models/task_model.dart';
import 'package:app/widgets/card_task.dart';
import 'package:app/widgets/new_task.dart';
import 'package:app/widgets/no_tasks_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TaskModel> tasks = [];
  void addTask(String text) {
    tasks.add(TaskModel(task: text));
    setState(() {});
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9EF3E3),
        title: Text(
          "My Tasks",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: tasks.isEmpty
          ? NoTasksView()
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return CardTask(
                  taskModel: tasks[index],
                  onDelete: () {
                    removeTask(index);
                  },
                );
              },
            ),
      bottomNavigationBar: NewTask(
        addTask: (value) {
          addTask(value);
        },
      ),
    );
  }
}
