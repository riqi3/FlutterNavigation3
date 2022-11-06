import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_form/counter.dart';
import 'package:login_form/column.dart';
import 'package:login_form/sideNav.dart';

class RowScreen extends StatelessWidget {
  //const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideNavBar(),
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 10.0),
                    height: 100,
                    width: 20,
                    color: Colors.red,
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: 10.0),
                    height: 100,
                    width: 20,
                    color: Colors.blue,
                  )),
                  Expanded(
                      child: Container(
                    height: 100,
                    width: 20,
                    color: Colors.green,
                  )),
                ],
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ColScreen(),
                      ));
                    },
                    child: Container(
                      width: 100,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                          child: Text(
                        "Next",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }

  //State<RowScreen> createState() => _RowScreenState();
}
