import 'package:flutter/material.dart';
import 'package:pertemuan4/Model/Makanan.dart';
import 'package:pertemuan4/Screen/HalamanDetail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    Makanan makananModel = Makanan();
    final List<Map<String, String>> menus = makananModel.menus;

    return Scaffold(
      appBar: AppBar(
        title: Text("Menu hari ini apa chef?"),
        backgroundColor: const Color.fromARGB(255, 207, 207, 207),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Jarak vertikal sebelum ListView
          Expanded(
            child: ListView.builder(
              itemCount: menus.length,
              itemBuilder: (context, index) {
                final menu = menus[index];
                var id = int.parse(menu['id'] ?? '1');
                var name = menu['name'] ?? '';
                var price = menu['price'] ?? '';
                var stock = menu['stock'] ?? '';

                return ListTile(
                  title: Text(name),
                  leading: Tooltip(
                    message: '$stock pcs remaining',
                    child: Icon(Icons.square_foot),
                  ),
                  subtitle: Text("Harga : $price"),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HalamanDetail(itemId: id),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
