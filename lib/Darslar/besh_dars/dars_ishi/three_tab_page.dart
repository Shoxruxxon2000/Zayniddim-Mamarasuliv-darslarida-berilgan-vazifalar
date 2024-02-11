import 'package:flutter/material.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(child: Text("Three page",style: TextStyle(fontSize: 30),),),
      ),
    );
  }
}
