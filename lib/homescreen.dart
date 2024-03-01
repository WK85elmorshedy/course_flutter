import 'dart:ffi';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_assigment_3/contact.dart';
import 'package:flutter_assigment_3/input.dart';
import 'package:flutter_assigment_3/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();

  List<Contact_> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Contacts Screen",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        ////////////////////////////////////////////////////////////////
        body:
            //////
            SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            ///////////
            child: Column(
              children: [
                Input(
                    controller: name,
                    type: TextInputType.text,
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blueAccent,
                    ),
                    inputData: 'Enter Your Name'),

                ////////
                SizedBox(
                  height: 15,
                ),

                //////////
                Input(
                    controller: phone,
                    type: TextInputType.phone,
                    icon: Icon(
                      Icons.phone,
                      color: Colors.blueAccent,
                    ),
                    inputData: 'Enter Your Number'),
                ////////
                SizedBox(
                  height: 15,
                ),
                //////////////////
                Row(
                  children: [
                    Visibility(
                      visible: contacts.length < 3,
                      child: Expanded(
                          child: Button_(
                        text: 'Add',
                        color: Colors.blueAccent,
                        press: add,
                      )),
                    ),
                    //////           ////////   ///////////////
                    SizedBox(
                      width: 15,
                    ),

                    /////////////        ///////////////////
                    Visibility(
                      visible: contacts.isNotEmpty,
                      child: Expanded(
                        child: Button_(
                          text: 'Delete',
                          color: Colors.redAccent,
                          press: () {
                            setState(() {
                              contacts.removeLast();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                for (Widget item in contacts) item,

                //////////////
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ));
  }

/////
  void add() {
    if (name.text.isNotEmpty && phone.text.isNotEmpty) {
      setState(() {
        contacts.add(Contact_(name: name.text, phone: phone.text));
        name.clear();
        phone.clear();
      });
    }

    /////
    void delete() {
      setState(() {
        contacts.removeLast();
      });
    }
  }
}
