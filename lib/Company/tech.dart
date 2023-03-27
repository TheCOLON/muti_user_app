import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../login.dart';
import 'empList.dart';
import 'leave.dart';
import 'task.dart';
import 'performance.dart';
import 'training.dart';
import 'aboutUs.dart';
import 'contact.dart';
import 'help.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState ();
}

class _TeacherState extends State<Teacher> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState(){
    tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jaxxson Co.",
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        // flexibleSpace: const Image(
        //   image:  AssetImage('assets/3.png'),
        //   fit: BoxFit.cover,
        // ),
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
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              child: Icon(Icons.groups,
                  color: Colors.white,
                  size: 30),
            ),
            Tab(
              child: Icon(Icons.receipt,
                  color: Colors.white,
                  size: 30),
            ),
            Tab(
              child: Icon(Icons.task,
                  color: Colors.white,
                  size: 30),
            ),
            Tab(
              child: Icon(Icons.star,
                  color: Colors.white,
                  size: 30),
            ),
            Tab(
              child: Icon(Icons.self_improvement,
                  color: Colors.white,
                  size: 30),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
            children:  [
              const UserAccountsDrawerHeader(

                accountName: Text ("Jaxxson Co.",
                    style: TextStyle(
                        color:Colors.white
                    )),
                accountEmail: Text("jx_co@gmail.com",
                    style: TextStyle(
                        color:Colors.white
                    )),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://image.shutterstock.com/image-vector/female-customer-service-icon-woman-260nw-426119812.jpg"
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://png.pngtree.com/thumb_back/fh260/back_our/20190619/ourmid/pngtree-company-business-background-poster-image_132990.jpg"


                        ),
                        fit: BoxFit.fill)
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('About Us'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text('Contact'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Contact(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_center),
                title:const  Text('Help Center'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Help(),
                    ),
                  );
                },
              )
            ]
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Tab(
            child:Homepage(),
          ),
          Tab(
            child:LeaveManagement(),
          ),
          Tab(
            child:Task(),
          ),
          Tab(
            child:Performance(),
          ),
          Tab(
            child:Trainings(),
          ),
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    const CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }
}