import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact US"),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text("jx_co@gmail.com"),
            leading: Icon(Icons.mail),
          ),
          ListTile(
            title: Text("0964467774"),
            leading: Icon(Icons.contact_phone),
          ),
          ListTile(
            title: Text("Jaxxson Co."),
            leading: Icon(Icons.facebook),
          ),
          ListTile(
            title: Text("JX_CO"),
            leading: Icon(Icons.telegram),
          )
        ],
      ),
    );
  }
}
