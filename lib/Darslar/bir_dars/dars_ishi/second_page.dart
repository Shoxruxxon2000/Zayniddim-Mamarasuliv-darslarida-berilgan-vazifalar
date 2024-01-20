import 'package:flutter/material.dart';

import 'models.dart';

class Product extends StatelessWidget {
  final Recipe resipe;
  Product({Key? key, required this.resipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resipe.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset(resipe.imageURL),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(resipe.cost, style: TextStyle(fontSize: 32),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(resipe.decription, style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
