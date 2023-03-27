import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../login.dart';

// import 'package:image_picker/image_picker.dart';
// import 'dart:io';


class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);
  // final Employee details;
  // final List<String> titles = <String>[
  //   'Employee Number',
  //   'Name',
  //   'Birthday',
  //   'Gender',
  //   'Address',
  // ];
  //
  // Page4({required this.details, Key? key}) : super(key: key);

  // final ImagePicker _picker = ImagePicker();
  // final ValueNotifier<String?> _imagePath = ValueNotifier<String?>(null);
  //
  // Future<void> _getImage() async {
  //   final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     _imagePath.value = pickedFile.path;
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Employee's Details"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                logout(context);
              },
              icon: const Icon(
                Icons.logout,
              ),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.cyan.shade800,
                    Colors.cyan.shade100,
                  ])),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // GestureDetector(
              //   onTap: _getImage,
              //   child:  CircleAvatar(
              //     radius: 80,
              //     backgroundImage: _imagePath.value != null ? FileImage(File(_imagePath.value!)) : null,
              //     child: _imagePath.value == null ? Icon(Icons.add_a_photo, size: 40) : null,
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: const <Widget>[
                    SizedBox(height: 50),
                    Text(
                      'Employee Number:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                    ),
                    // Expanded(
                    //   child: Text(
                    //     "${details.employeeNumber}",
                    //     style: const TextStyle(color: Colors.black),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: const <Widget>[
                     SizedBox(height: 50),
                    Text(
                      'Name:           ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                    ),
                    // Expanded(
                    //   child: Text(
                    //     "${details.name}",
                    //     style: const TextStyle(color: Colors.black),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: const <Widget>[
                    SizedBox(height: 50),
                    Text(
                      'Birthday:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                    ),
                    // Expanded(
                    //   child: Text(
                    //     "${details.birthday}",
                    //     style: const TextStyle(color: Colors.black),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: const <Widget>[
                    SizedBox(height: 50),
                    Text(
                      'Gender:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                    ),
                    // Expanded(
                    //   child: Text(
                    //     "${details.gender}",
                    //     style: const TextStyle(color: Colors.black),
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: const <Widget>[
                    SizedBox(height: 50),
                    Text(
                      'Address:',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                    ),
                    // Expanded(
                    //   child: Text(
                    //     "${details.address}",
                    //     style: const TextStyle(color: Colors.black),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }

  Future<void> logout(BuildContext context) async {
    const CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}





