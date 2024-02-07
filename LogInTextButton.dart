import "package:flutter/material.dart";

class LoginTextButton extends StatelessWidget {
  String textString;

  LoginTextButton({required this.textString});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.all(15),
        child: Expanded(
            child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 15),
          ),
          onPressed: () {},
          child: Text(
            textString,
            style: TextStyle(color: Colors.white),
          ),
        )));
  }
}
