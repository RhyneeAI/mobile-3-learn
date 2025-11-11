import 'package:flutter/material.dart';
import 'package:pertemuan6/Widgets/MenuGrid.dart';
import 'package:pertemuan6/Widgets/MenuList.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Aplikasi P6',
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Halaman per List-an"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "Menu List"),
              Tab(icon: Icon(Icons.list), text: "Menu Grid"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MenuList(),
            MenuGrid()
          ],
        ),
      ),
    );
  }
}
