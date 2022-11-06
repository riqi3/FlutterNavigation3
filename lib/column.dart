import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_form/row-col.dart';
import 'package:login_form/row.dart';
import 'package:login_form/sideNav.dart';

class ColScreen extends StatelessWidget {
  //const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
      drawer: SideNavBar(),
      appBar: AppBar(
        title: Text("Column"),
      ),
      body: SingleChildScrollView(
              child: Container(
        margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              //height: 5.0,
              width: 500,
              height: 100,
              color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              //height: 5.0,
              width: 500,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              //height: 5.0,
              width: 500,
              height: 100,
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              //height: 5.0,
              width: 500,
              height: 100,
              color: Colors.amber,
            ),
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RowScreen(),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RowColScreen(),
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
