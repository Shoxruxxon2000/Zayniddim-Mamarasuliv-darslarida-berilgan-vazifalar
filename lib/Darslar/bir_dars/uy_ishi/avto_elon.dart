import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/bir_dars/uy_ishi/models.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/bir_dars/uy_ishi/product.dart';

class Avtoelon extends StatelessWidget {
  static List<Car> list = [
    Car("Nexia 1", "White", "4000", "2007", "assets/bir_uy/nexia1.png"),
    Car("Nexia 2", "White", "7000", "2013", "assets/bir_uy/nexia2.png"),
    Car("Nexia 3", "White", "10000", "2022", "assets/bir_uy/nexia3.webp"),
    Car("Spark 3", "White", "9000", "2022", "assets/bir_uy/spark.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Avtoelon"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Product(car: list[index]),
            ),
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(3.0),
                        margin: const EdgeInsets.all(3.0),
                        height: 200,
                        width: 200,
                        child: Image.asset(list[index].imageURL)),
                    Container(
                      width: 150,
                      height: 200,
                      child: Column(
                        children: [
                          Text(
                            "Name: " + list[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Price: " + list[index].price + " dollor",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Data: " +
                                list[index].data +
                                " yilda ishlab chiqarilgan",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Color: " + list[index].color + ", rangi oq",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
