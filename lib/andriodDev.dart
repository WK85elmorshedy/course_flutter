import 'package:assigment2_p2/route_class_data.dart';
import 'package:assigment2_p2/screen.dart';
import 'package:flutter/material.dart';

class Andriod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CourseData data = ModalRoute.of(context)?.settings.arguments as CourseData;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 2, 38, 101),
          title: Text('RouteAppOne',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Bg.jpg"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(children: [
                Screen(imagepath: data.imgaPath),
                Text(data.data)
              ]),
            )));
  }
}
