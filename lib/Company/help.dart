import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

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
