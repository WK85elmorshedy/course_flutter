import "package:flutter/material.dart";

class LoginTextField extends StatelessWidget {
  String text;

  LoginTextField({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.all(15),
        child: Row(children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 3),
                  ),
                  hintText: text,
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ]));
  }
}
