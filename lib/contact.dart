// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

class Contact_ extends StatelessWidget {
  String name;
  String phone;

  Contact_({super.key, required this.name, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Text('name: $name '),
            SizedBox(
              height: 15,
            ),
            Text('phone: $phone')
          ],
        ));
  }
}
