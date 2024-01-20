import 'dart:io';

import 'package:flutter/material.dart';

class Android_vs_IOS extends StatefulWidget {
  const Android_vs_IOS({Key? key}) : super(key: key);

  @override
  State<Android_vs_IOS> createState() => _Android_vs_IOSState();
}

class _Android_vs_IOSState extends State<Android_vs_IOS> {
  bool myValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: Text(
          "Andriod va IOS Platformalari",
        ),
      ),
      body: Switch.adaptive(
        onChanged: (value) {
          setState(() {
            myValue = value;
          });
        },
        value: myValue,
      ),
      floatingActionButton: Platform.isWindows
          ? Container()
          : FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
    );
  }
}
