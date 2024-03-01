import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String inputData;
  Widget icon;
  TextEditingController controller;
  TextInputType type;

  Input(
      {super.key,
      required this.controller,
      required this.icon,
      required this.inputData,
      required this.type});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
          border: null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: inputData,
          hintStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          suffixIcon: icon),
    );
  }
}
