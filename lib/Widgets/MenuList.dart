import 'package:flutter/material.dart';
import 'package:pertemuan6/Model/Pahlawan.dart';

Widget MenuList() {
  Pahlawan pahlawan = Pahlawan();

  return ListView.builder(
    itemCount: pahlawan.heroes.length,
    itemBuilder: (context, index) {
      var data = pahlawan.heroes[index];
      return Card(
        child: ListTile(
          leading: Image.network(data['image'], fit: BoxFit.cover,),
          title: Text(data['name']),
        ),
      );
    },
  );
}