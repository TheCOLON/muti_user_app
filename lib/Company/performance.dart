import 'package:flutter/material.dart';

class Performance extends StatefulWidget {
  const Performance({Key? key}) : super(key: key);

  @override
  State<Performance> createState() => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Performance Evaluation")
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
