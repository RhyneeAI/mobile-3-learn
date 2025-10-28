import 'package:flutter/material.dart';
import 'package:pertemuan4/Model/Makanan.dart';

class HalamanDetail extends StatelessWidget {
  final int itemId;

  const HalamanDetail({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    Makanan makananModel = Makanan();
    final List<Map<String, String>> menus = makananModel.menus;
    final menu = menus.firstWhere((element) => element['id'] == itemId.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(menu['name'] ?? ''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama Makanan : ${menu['name'] ?? ''}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 16),
            Text(
              "Harga : ${menu['price'] ?? ''}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 16),
            Text(
              "Sisa Stok : ${menu['stock'] ?? ''} pcs",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
