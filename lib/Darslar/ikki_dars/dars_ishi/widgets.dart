import 'package:flutter/material.dart';

class MyWidgets extends StatelessWidget {
  const MyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.yellow,
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(30.0),
          width: 300,
          height: 300,
          child: Column(
            children: [
              Container(
                color: Colors.red,
                child: Text(
                  "Assalomu alaykum",

                  style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                ),
              ),
              Container(
                color: Colors.red,
                child: Text(
                  "Assalomu alaykum1",
                  style: TextStyle(fontSize: 30, fontFamily: "Anton-Regular"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
