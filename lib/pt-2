import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorView(),
      // debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  // Controller Input
  final _bbController = TextEditingController();
  final _tbController = TextEditingController();

  // Hasil
  double? scoreBMI;
  String resultBMI = '-';

  // Event function
  void HitungBMI() {
    double bb = double.tryParse(_bbController.text) ?? 0.00;
    double tb = double.tryParse(_tbController.text) ?? 0.00;

    setState(() {
      if (bb > 0 && tb > 0) {
        double bmi = bb / ((tb / 100) * (tb / 100));
        scoreBMI = bmi;

        if (bmi <= 18.5) {
          resultBMI = 'Begang';
        } else if (bmi <= 22.9) {
          resultBMI = 'Normal';
        } else if (bmi <= 24.9) {
          resultBMI = 'Beresiko';
        } else if (bmi <= 30) {
          resultBMI = 'Gendut';
        } else {
          resultBMI = 'Obesitas';
        }
      } else {
        resultBMI = "AWOKAOWKOAKWOAK";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Himtung bemrat bamdan'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _bbController,
              decoration: InputDecoration(labelText: "Bemrat Bamdan"),
              cursorColor: Colors.redAccent,
            ),
            TextField(
              controller: _tbController,
              decoration: InputDecoration(labelText: "Timggi Bamdan"),
              cursorColor: Colors.redAccent,
            ),
            ElevatedButton(onPressed: HitungBMI, child: Text("HITUNGGGGGG")),
            Container(
              width: 250,
              height: 200,
              decoration: BoxDecoration(color: Colors.orange),
              margin: EdgeInsets.all(30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(scoreBMI?.toStringAsFixed(1) ?? '0.00'),
                    Text(resultBMI),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
