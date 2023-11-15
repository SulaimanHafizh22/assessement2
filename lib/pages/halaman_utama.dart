import 'package:flutter/material.dart';
import 'pages/halaman_form_tambah_tukang_ojek.dart';
import 'pages/halaman_form_tambah_transaksi.dart';

// Model TukangOjek
class TukangOjek {
  String nama;
  String nomorPolisi;

  TukangOjek({required this.nama, required this.nomorPolisi});
}

class HalamanUtama extends StatefulWidget {
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  // List untuk menyimpan data tukang ojek
  List<TukangOjek> listTukangOjek = [];

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
              onPressed: () async {
                // Tunggu hasil dari halaman tambah tukang ojek
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanFormTambahTukangOjek()),
                );

                // Jika result tidak null, tambahkan ke list tukang ojek
                if (result != null && result is TukangOjek) {
                  setState(() {
                    listTukangOjek.add(result);
                  });
                }
              },
              child: Text('Tambah Tukang Ojek'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HalamanFormTambahTransaksi()),
                );
              },
              child: Text('Tambah Transaksi'),
            ),
            SizedBox(height: 16),
            // Tampilkan data tukang ojek dalam bentuk list atau tabel
            Expanded(
              child: ListView.builder(
                itemCount: listTukangOjek.length,
                itemBuilder: (context, index) {
                  final tukangOjek = listTukangOjek[index];
                  return ListTile(
                    title: Text(tukangOjek.nama),
                    subtitle: Text(tukangOjek.nomorPolisi),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
