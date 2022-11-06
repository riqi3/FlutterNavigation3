import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_form/column.dart';
import 'package:login_form/sideNav.dart';

class RowColScreen extends StatelessWidget {
  //const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SideNavBar(),
      appBar: AppBar(
        title: Text("Row & Column"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    //margin: EdgeInsets.only(right: 10.0),
                    height: 100,
                    width: 20,
                    color: Colors.green,
                  )),
                ],
              ),
              Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  height: 100.0,
                  width: 500,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  height: 100.0,
                  width: 500,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  height: 100.0,
                  width: 500,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30.0),
                  height: 100.0,
                  width: 500,
                  color: Colors.amber,
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
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                            child: Text(
                          "Prev",
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
              ])
            ],
          ),
        ),
      ),
    );
  }

  //State<RowScreen> createState() => _RowScreenState();
}
