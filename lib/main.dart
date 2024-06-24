import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  TeksUtama(
      {required this.teks1,
      required this.teks2}); // Menambahkan required di depan parameter
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 41,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 221, 143, 25)),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 233, 109, 7)),
        )
      ],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Musafa Ali'),
          backgroundColor: Colors.blue, // Menambahkan warna biru pada appbar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TeksUtama(
                  // Menambahkan const di depan pemanggilan konstruktor
                  teks1: 'ALHAMDULILLAH',
                  teks2: 'BERHASIL',
                ),
              ),
              Expanded(
                child: TeksUtama(
                  // Menambahkan const di depan pemanggilan konstruktor
                  teks1: 'ALLAHUMA SOLI ALA SAYIDINA',
                  teks2: 'MUHAMMAD',
                ),
              ),
              Expanded(
                child: TeksUtama(
                  // Menambahkan const di depan pemanggilan konstruktor
                  teks1: 'Musafa Ali',
                  teks2: 'STI202102588',
                ),
              ),
              Expanded(
                child: TeksUtama(
                  // Menambahkan const di depan pemanggilan konstruktor
                  teks1: 'Muhammad Khoerul Anam',
                  teks2: 'STI202102561',
                ),
              ),
            ],
          ),
        ),
        backgroundColor:
            Colors.lightBlue[100], // Menambahkan warna biru muda pada body
      ),
   );
 }
}
