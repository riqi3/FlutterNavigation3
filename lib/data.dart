import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_form/home.dart';
import 'package:login_form/sideNav.dart';

class DataScreen1 extends StatelessWidget {
  String value = '';
  DataScreen1({required this.value});

  // dataScren({this.value});
  //const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideNavBar(),
      appBar: AppBar(
        title: Text("Data Passed"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          color: Colors.white,
          child: Text(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 15,
            ),
            "Your age is " + value,
          ),
        ),
      ),
    );
  }

  //State<RowScreen> createState() => _RowScreenState();
}
