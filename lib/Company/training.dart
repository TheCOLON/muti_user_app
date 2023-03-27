import 'package:flutter/material.dart';

class Trainings extends StatefulWidget {
  const Trainings({Key? key}) : super(key: key);

  @override
  State<Trainings> createState() => _PerformanceState();
}

class _PerformanceState extends State<Trainings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trainings and Development"),
      ),
      body: const Center(
          child: Text("Under Maintenance \n Come again later!",
            style: TextStyle(
                fontSize: 20
            ),)
      ),
    );
  }
}
