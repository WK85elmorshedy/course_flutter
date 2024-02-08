import 'package:flutter/material.dart';
import 'andriodDev.dart';
//import 'iosDev.dart';
//import 'fullStack.dart';
import 'navigation.dart';
import 'screen.dart';
// import 'appbar.dart';

void main() {
  runApp(RouteCenter());
}

class RouteCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Route",
      routes: {
        // When navigating to the "login" route, build the FirstScreen widget.
        'androidCourse': (context) => Andriod(),

        // 'iosCourse': (context) => IOS(),
        // 'fullStack': (context) => FullStack(),
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 2, 38, 101),
          title: Text('RouteAppOne',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        body: Container(
            color: const Color.fromRGBO(255, 255, 255, 1),
            margin: EdgeInsetsDirectional.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Screen(imagepath: "assets/images/Android.jpeg"),
                  Button(
                      nextScreen: 'androidCourse',
                      textButton: 'ANDROID COURSE'),
                  Screen(imagepath: "assets/images/IOS.jpeg"),
                  Button(nextScreen: 'iosCourse', textButton: 'IOS COURSE'),
                  Screen(imagepath: "assets/images/fullStack.jpeg"),
                  Button(nextScreen: 'fullStack', textButton: 'FULL STACK'),
                ],
              ),
            )),
      ),
    );
  }
}
