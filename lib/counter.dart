import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_form/sideNav.dart';

class CounterScreen extends StatelessWidget {
  //const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideNavBar(),
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          color: Colors.white,
          child: Column(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }

  //State<RowScreen> createState() => _RowScreenState();
}
