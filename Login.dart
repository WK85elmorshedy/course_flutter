import "package:flutter/material.dart";
import 'package:assigment2_p1/screens/HomeScreen/HomeScreen.dart';

import 'LogInTextField.dart';
import 'LogInTextButton.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.blueAccent,
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              LoginTextField(text: "Email or Phone"),
              SizedBox(height: 15),
              LoginTextField(text: "Password"),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "homescreen");
                          },
                          child: Text("LOGIN")),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  height: double.infinity,
                ),
              ),
              LoginTextButton(textString: "Sign Up for Facebook"),
              SizedBox(
                height: 10,
              ),
              LoginTextButton(textString: "Forgot Password?"),
            ])));
  }
}
