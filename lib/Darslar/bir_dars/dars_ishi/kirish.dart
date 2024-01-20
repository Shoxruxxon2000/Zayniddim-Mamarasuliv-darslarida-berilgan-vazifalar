///Flutter orqali IOS va android operatison tizimlarga praglarmmalar yaratadi
///androidda planshetlar, telefonlar, smatrtv va boshqalarga dastur tuzsak bo'ladi.
///IOS Planshet, Telefon, va boshqalar,
///Flutter cross platform hisoblanadi.
///Flutterda hotereloud funksiyasi bor.
///Flutterda kutubxonalar yaratishimiz mumkin.
///Flutter dart dasturlash tilidan foydalanadi.
///Flutter widgetsdan tashkil topgan.
///Cupertina IOS uchun
///Material android uchun
///Organation linki birmarta ishlatilishi kerak bu playmarketga qo'yishga kerak bo'ladi
///Hotereloud ishlashi uchun build ichida yozilgan bo'lishi kerak.
///Agar undan tashqarida uozilgan bo'lsa loyiha qayta ishga tushiriladi.
import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/bir_dars/dars_ishi/second_page.dart';

import 'models.dart';

// class Lesson_One extends StatelessWidget {
//   const Lesson_One({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Lesson one"),
//       ),
//       body: const Text(
//         "Assalomu alaykum birinchi darsimizga xush kelibsiz!",
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {print("Mubina");},),
//           SizedBox(width: 20, height: 10,),
//           FloatingActionButton(onPressed: () {print("Mubina");},),
//         ],
//       ),
//     );
//   }
// }
class RetsepApp extends StatelessWidget {
  const RetsepApp({Key? key}) : super(key: key);
  static List<Recipe> list = [
    Recipe("Spagetti", "assets/bir_dars/spagetti.webp", "30 000",
        "Lag'mon va go'shtdan iborat"),
    Recipe("Tomato Soup", "assets/bir_dars/tamoto_soup.png", "25 000",
        "Go'shtli sho'rva"),
    Recipe("Grilled Cheese", "assets/bir_dars/grill_cheese.png", "20 000",
        "Lag'mon va go'shtdan iborat"),
    Recipe("Toco salat", "assets/bir_dars/toco_salat.webp", "25 000",
        "Toko salat bo salat hisoblanadi."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Recipe App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Product(resipe: list[index]),)),
        child: Card(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(4.0),
                margin: EdgeInsets.all(4.0),
                child: Image.asset(
                  list[index].imageURL,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                list[index].title + " " + list[index].cost,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }

  // Widget myCard(Recipe recipe) {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child:
  //   );
  // }
}
