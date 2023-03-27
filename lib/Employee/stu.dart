import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../login.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {

  int pageIndex = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Jaxxson Co."),
      //   centerTitle: true,
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       logout(context);
        //     },
        //     icon: const Icon(
        //       Icons.logout,
        //     ),
        //  ),
      //   // ],
      // ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),

    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color:Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: (){
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 30,
              )
                  :const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 30,
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: (){
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                Icons.receipt,
                color: Colors.white,
                size: 30,
              )
                  :const Icon(
                Icons.receipt_outlined,
                color: Colors.white,
                size: 30,
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: (){
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                Icons.task,
                color: Colors.white,
                size: 30,
              )
                  :const Icon(
                Icons.task_outlined,
                color: Colors.white,
                size: 30,
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: (){
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              )
                  :const Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 30,
              )
          ),
        ],
      ),
    );
  }


  //
  // Future<void> logout(BuildContext context) async {
  //   const CircularProgressIndicator();
  //   await FirebaseAuth.instance.signOut();
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => LoginPage(),
  //     ),
  //   );
  // }
}



