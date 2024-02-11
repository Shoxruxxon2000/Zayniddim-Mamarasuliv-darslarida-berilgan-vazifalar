import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/besh_dars/dars_ishi/first_tab_page.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/besh_dars/dars_ishi/second_tab_page.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/besh_dars/dars_ishi/three_tab_page.dart';
class TabBarPage extends StatefulWidget {
   TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
   int selectedpage = 1;

  final pages = [
    FirstPage(),
    SecondPage(),
    ThreePage(),
    ThreePage(),
    ThreePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: const Text("TabBar vs TabBarView", style: TextStyle(color: Colors.white,),),
          bottom: TabBar(
           // isScrollable: true,
            tabs: [
              Tab(text: "First"),
              Tab(text: "Second"),
              Tab(text: "Three"),

            ],
          ),
        ),
        body: pages[selectedpage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedpage,

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.access_time), label: "Time"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          ],
          onTap: (value) {
            setState(() {
              selectedpage = value;
            });
          },
        ),
      ),
    );
  }
}
