import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Home"),
      // ),
      body: Stack (
        children: <Widget> [ dashBg, content ],
      ),
    );
  }
  get dashBg => Column(
    children: <Widget> [
      Expanded (
        flex: 2,
        child: Container(
          color: Colors.blue,
        )
      ),
      Expanded(flex: 5,child: Container(
        color: Colors.transparent,
      ),
      )
    ],
  );
  get content => Column(
    children: <Widget>[
      header,
      grid,
    ],
  );
  get  header => const ListTile(
    contentPadding: EdgeInsets.only (left: 20, right: 20, top: 20),
    title: Text (
      "Dashboard",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
      subtitle: Text (' Jaxxson Co.')
  );

  get grid => Expanded(child: Container (
    padding: const EdgeInsets.only (left: 16, right: 16, bottom: 16),
    child: GridView.count(
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      crossAxisCount: 2,
      childAspectRatio: .90,
      children:List.generate(6, (_) {
        return Card (
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
  ),
        child: Center(
          child: Column (
            mainAxisSize: MainAxisSize.min,
            children: const <Widget> [FlutterLogo(), Text('Data')],
  ),
  ),
        );
  },
    ),
    )
  ),
  );
}