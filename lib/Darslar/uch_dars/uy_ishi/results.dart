import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_darslari_zayniddin_mamarasulov/Darslar/uch_dars/uy_ishi/model_result.dart';
import 'package:http/http.dart' as http;
class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  List<dynamic> users= [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Results API", style: TextStyle(fontWeight: FontWeight.bold),),),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user['email'];
          final name = user['name']['first'];
          final picture = user['picture']["medium"];
        return Card(child: ListTile(
          onTap: () {

          },
          leading: CircleAvatar(child: Image.network(picture)),
          title: Text(name),),);
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () => MyAPI(),
        child: Icon(Icons.add),
      ),
    );
  }

  MyAPI()async{
    const url = "https://randomuser.me/api/?results=5000";
    final uri = Uri.parse(url);
     final response = await http.get(uri);
      final body = response.body;
      final json = jsonDecode(body);

      setState(() {
        users = json['results'];
      });


  }
}
