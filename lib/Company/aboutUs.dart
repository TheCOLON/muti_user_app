import 'package:flutter/material.dart';


class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Center(
          child:RichText (
              text: const TextSpan(
                  children: [
                    TextSpan(
                        text:  "About US '\n' ",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          // foreground: Paint()
                          //   ..shader = ui.Gradient.linear (
                          //     const Offset(0, 20),
                          //     const Offset(150, 20),
                          //     <Color> [
                          //       Colors.cyan.shade100,
                          //       Colors.cyan.shade800
                          //     ]
                          //   )
                        )
                    ),
                    TextSpan(
                        text:  "Lorem ipsum dolor sit amet, consectetur '\n' adipiscing elit, sed do eiusmod tempor '\n' incididunt ut labore et dolore magna \n' aliqua. Ut enim ad minim veni '\n' am, quis nostrud exercitatin.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                        )
                    )
                  ]
              )
          ),
        )
    );
  }
}
