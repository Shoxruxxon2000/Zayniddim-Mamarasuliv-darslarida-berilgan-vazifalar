import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
   MyTabBar({Key? key}) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("TabBar" ,style: TextStyle(color: Colors.white),),
      ),

      body: PageView(
        controller: pageController,
        children: const [
          Center(child: Text("First page",style: TextStyle(fontSize: 30),),),
          Center(child: Text("Second page", style: TextStyle(fontSize: 30),),),
          Center(child: Text("Three page", style: TextStyle(fontSize: 30),),),
        ],
      ),
    );
  }
}
