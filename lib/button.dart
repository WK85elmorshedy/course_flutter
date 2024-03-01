import 'package:flutter/material.dart';

typedef onPress = void Function();

class Button_ extends StatelessWidget {
  String text;
  onPress press;
  Color color;

  Button_(
      {super.key,
      required this.text,
      required this.press,
      required this.color});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(text,
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold)));
  }
}
