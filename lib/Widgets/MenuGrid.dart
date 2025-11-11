import 'package:flutter/material.dart';
import 'package:pertemuan6/Model/Pahlawan.dart';

Widget MenuGrid() {
  Pahlawan pahlawan = Pahlawan();
  return GridView.builder(
    itemCount: pahlawan.heroes.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
    itemBuilder: (context, index) {
      var data = pahlawan.heroes[index];
      return Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(data['image'], fit: BoxFit.cover,)
            ),
            Text(data['name'])
          ],
        ),
      );
    },
  );
}