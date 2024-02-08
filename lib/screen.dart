import 'package:flutter/widgets.dart';

class Screen extends StatelessWidget {
  // double left, right, top, bottom;
  String imagepath;

  Screen(
      // {required this.left,
      // required this.right,
      // required this.top,
      // required this.bottom,
      {required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      //width: 100,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagepath), fit: BoxFit.cover)),
    );
  }
}
