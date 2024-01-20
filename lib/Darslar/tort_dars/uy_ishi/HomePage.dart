import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/tort_dars/uy_ishi/SecondPage.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/tort_dars/uy_ishi/model.dart';

// first
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Xabar> xabarlar = [
      Xabar(
          "Xitoyda maktab yotoqxonasidagi yong‘inda 13 kishi halok bo‘ldi",
          "Duniyo",
          "Xitoyning markaziy qismidagi Xenan provinsiyasida maktab yotoqxonasida sodir bo‘lgan yong‘in oqibatida kamida 13 kishi halok bo‘ldi, deb xabar bermoqda Sinxua mahalliy hokimiyat organlariga tayanib.",
          "20.01.2024", 
          "assets/tort_uy/Dunyo.jpg",
          "297"),
      Xabar(
          "Senat O‘zbekiston qonunchilik normalarini JST bitimlariga muvofiqlashtirishni nazarda tutuvchi qonunni ma’qulladi",
          "Mahalliy",
          "Oliy Majlis Senatining qirq to‘qqizinchi yalpi majlisida “O‘zbekiston Respublikasining ayrim qonun hujjatlariga O‘zbekiston Respublikasi milliy qonunchiligini Jahon savdo tashkiloti bitimlariga muvofiqlashtirishni nazarda tutuvchi o‘zgartirish va qo‘shimchalar kiritish to‘g‘risida”gi qonun ko‘rib chiqildi. Bu haqda parlament yuqori palatasi matbuot xizmati xabar berdi.",
          "20.01.2024",
          "assets/tort_uy/Mahalliy.jpg",
          "537"),
      Xabar(
          "Xitoyda maktab yotoqxonasidagi yong‘inda 13 kishi halok bo‘ldi",
          "Duniyo",
          "Xitoyning markaziy qismidagi Xenan provinsiyasida maktab yotoqxonasida sodir bo‘lgan yong‘in oqibatida kamida 13 kishi halok bo‘ldi, deb xabar bermoqda Sinxua mahalliy hokimiyat organlariga tayanib.",
          "20.01.2024",
          "assets/tort_uy/Dunyo.jpg",
          "297"),
      Xabar(
          "Xitoyda maktab yotoqxonasidagi yong‘inda 13 kishi halok bo‘ldi",
          "Duniyo",
          "Xitoyning markaziy qismidagi Xenan provinsiyasida maktab yotoqxonasida sodir bo‘lgan yong‘in oqibatida kamida 13 kishi halok bo‘ldi, deb xabar bermoqda Sinxua mahalliy hokimiyat organlariga tayanib.",
          "20.01.2024",
          "assets/tort_uy/Dunyo.jpg",
          "297"),
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: MyDrower(),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Daryo"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: "So'ngi yangiliklar",
              ),
              Tab(
                text: "So'ngi yangiliklar",
              ),
              Tab(
                text: "So'ngi yangiliklar",
              ),
              Tab(
                text: "So'ngi yangiliklar",
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(xabarlar[index].type),
                        Text("${xabarlar[index].date} | ${xabarlar[index].see}")
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(xabar: xabarlar[index]),),);

                      },
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(xabarlar[index].image, height: 80, width: 120,),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            width: 240,
                            child: Text(xabarlar[index].title),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget MyDrower() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Daryo",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(24),
                                    topLeft: Radius.circular(24),
                                  ),
                                ),
                                padding: EdgeInsets.all(5),
                                child: const Text("Lotincha",
                                    style: TextStyle(fontSize: 20)),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                //color: Colors.blue,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                  ),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: const Text("Kirilcha",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
               const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Text(
                      "Toshkent",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.cloud_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "+12.0",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 1,
                      width: 270,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.yellowAccent.shade100,
            child: ListTile(
              hoverColor: Colors.yellowAccent,
              onTap: () {},
              title: const Text("Qo'llamma ekranini ko'rish"),
            ),
          ),
          Container(
            color: Colors.black12,
            child: ListTile(
              hoverColor: Colors.yellowAccent,
              onTap: () {},
              title: const Text("So'ngi yangiliklar", style: TextStyle(
                color: Colors.blue
              ),),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {},
              title: const Text("Mahalliy",),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {},
              title: Text("Duniyo",),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {},
              title: const Text("Texnalogiya",),
            ),
          ),
          Card(
            shape: const Border(top: BorderSide.none, right: BorderSide.none, bottom: BorderSide.none, left: BorderSide.none),
            child: Container(
              child: ListTile(
                onTap: () {},
                title: Text("Tanlangan xabarlar",),
              ),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {},
              title: Text("Madaniyat",),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {},
              title: Text("Avto",),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {},
              title: Text("Sport",),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () {},
              title: Text("Foto",),
            ),
          ),
        ],
      ),
    );
  }
}
