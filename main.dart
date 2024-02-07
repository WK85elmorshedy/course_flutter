import "package:flutter/material.dart";
import "package:assigment2_p1/screens/LogIn/Login.dart";
import 'package:assigment2_p1/screens/HomeScreen/HomeScreen.dart';

void main() {
  runApp(MyLogIn());
}

class MyLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: "login",
      routes: {
        // When navigating to the "login" route, build the FirstScreen widget.
        'login': (context) => LogIn(),
        'homescreen': (context) => HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    );
  }
}
