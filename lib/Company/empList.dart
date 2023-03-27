import 'class.dart';
import 'package:flutter/material.dart';
import 'empDetails.dart';
import 'addForm.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Employee emp = Employee(
    employeeNumber: '',
    name: '',
    birthday: '',
    gender: '',
    address: '',
  );

  List info = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jaxxson Co. Employee"),
      ),
      body: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            onDismissed: (dismiss) {
              setState(() {
                info.removeAt(index);
              });
            },
            child: Card(
              child: ListTile(
                title: Text(
                  info[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('${info[index].employeeNumber}'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              EmployeeDetails(details: info[index])));
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Employee newlistinfo = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddForm()));
          if (newlistinfo.employeeNumber != null) {
            setState(() {
              info.add(newlistinfo);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

