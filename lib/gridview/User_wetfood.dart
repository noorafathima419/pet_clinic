import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserWetfood extends StatefulWidget {
  const UserWetfood({super.key});

  @override
  State<UserWetfood> createState() => _UserWetfoodState();
}

class _UserWetfoodState extends State<UserWetfood> {
  final List<String> items = List.generate(10, (index) => "Item $index");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 2, // width/height ratio
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            child: Center(
              child: Text(
               "Bellotta Mackeral" ,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),);
  }
}
