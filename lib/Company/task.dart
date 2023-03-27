import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  // List<String> items = ['Sharing personal information', 'Report', 'Decision-making', 'Regulating topic', 'Planning'];
  // List<bool> checked = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Task and Project Management')
      ),
      body: const Center(
          child: Text("Under Maintenance \n Come again later!",
              style: TextStyle(
                  fontSize: 20
              ))
      ),
    );
  }
}