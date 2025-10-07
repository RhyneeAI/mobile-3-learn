import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ProfileCard());
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileCardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Scaffold
class ProfileCardView extends StatelessWidget {
  const ProfileCardView({super.key});
  static const TextStyle label = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(77, 66, 55, 55),
  );
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(77, 255, 255, 255),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 11, 46),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                'https://pbs.twimg.com/media/FLZGGYIUUAMOA75.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(margin: EdgeInsets.only(bottom: 20.0)),
            Text('Nama',
              style: GoogleFonts.poppins(
                fontSize: 32,
                color: Colors.amber,
                fontWeight: FontWeight.w300
              ),
            ),
            Text('Jabatan', 
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.amber,
                fontWeight: FontWeight.w300
              )
            ),
            SizedBox(
              width: 50,
              height: 5,
              child: Divider(thickness: 3),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: ListTile(
                leading: Icon(Icons.phone_bluetooth_speaker),
                title: Text('0872-7272-7277 WYSI'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.mark_email_read_outlined),
                title: Text(
                  'bwabawbaab@gmail.com',
                  style: TextStyle(letterSpacing: 1.122),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
