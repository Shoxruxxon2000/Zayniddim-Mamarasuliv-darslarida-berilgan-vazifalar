import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/bir_dars/uy_ishi/models.dart';

class Product extends StatelessWidget {
  final Car car;
  const Product({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text(car.name),),
      body: Column(
        children: [
          Container(
            child: Image.asset(car.imageURL),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(car.price),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(car.data),
          ),
        ],
      ),
    );
  }
}
