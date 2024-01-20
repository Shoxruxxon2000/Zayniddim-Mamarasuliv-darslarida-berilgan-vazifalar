import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/tort_dars/uy_ishi/model.dart';

class SecondPage extends StatelessWidget {
  final Xabar xabar;
  const SecondPage({Key? key, required this.xabar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(xabar.type, style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(xabar.title ,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(xabar.image),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(xabar.description ,style: TextStyle(fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(xabar.date),
                Text("${xabar.see}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
