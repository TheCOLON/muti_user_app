import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<String> items = ['Sharing personal information', 'Report', 'Decision-making', 'Regulating topic', 'Planning'];
  List<bool> checked = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Task and Project Management')
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Checkbox(
              value: checked[index],
              onChanged: (bool? value) {
                if( value != null) {
                  setState(() {
                    checked[index] = value;
                  });
                }
              },
            ),
            title: Text('Task ${index+1}: ${items[index]}'),
          );
        },
      ),
    );
  }
}