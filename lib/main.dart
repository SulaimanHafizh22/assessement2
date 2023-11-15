// main.dart
import 'package:flutter/material.dart';
import 'pages/halaman_utama.dart';
import 'pages/halaman_form_tambah_tukang_ojek.dart'; //
import 'pages/halaman_form_tambah_transaksi.dart'; //

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opangatimin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/halamanUtama',
      routes: {
        '/halamanUtama': (context) => HalamanUtama(),
        '/tambahTukangOjek': (context) => HalamanFormTukangOjek(),
        '/tambahTransaksi': (context) => HalamanFormTransaksi(),
      },
    );
  }
}

// halaman_utama.dart
import 'package:flutter/material.dart';
import 'halaman_form_tambah_tukang_ojek.dart';
import 'halaman_form_tambah_transaksi.dart';

class HalamanUtama extends StatefulWidget {
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tambahTukangOjek');
              },
              child: Text('Tambah Tukang Ojek'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tambahTransaksi');
              },
              child: Text('Tambah Transaksi'),
            ),
          ],
        ),
      ),
    );
  }
}
