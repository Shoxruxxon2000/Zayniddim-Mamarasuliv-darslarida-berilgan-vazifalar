import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/bir_dars/dars_ishi/kirish.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/bir_dars/uy_ishi/avto_elon.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/ikki_dars/uy_ishi/phone_number.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/tort_dars/dars_ishi/android_vs_ios.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/uch_dars/uy_ishi/results.dart';
import 'Darslar/ikki_dars/dars_ishi/widgets.dart';
import 'Darslar/tort_dars/uy_ishi/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


