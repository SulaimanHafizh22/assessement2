import 'package:flutter/material.dart';

class HalamanFormTambahTukangOjek extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorPolisiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Tukang Ojek'),
      ),
      body: Column(
        children: [
          // Field untuk nama (teks) dan nomor polisi (teks)
          TextField(
            controller: namaController,
            decoration: InputDecoration(labelText: 'Nama'),
          ),
          TextField(
            controller: nomorPolisiController,
            decoration: InputDecoration(labelText: 'Nomor Polisi'),
          ),
          ElevatedButton(
            onPressed: () {
              // Logika untuk menyimpan data tukang ojek
              String nama = namaController.text;
              String nomorPolisi = nomorPolisiController.text;
              // ... (lakukan apa yang diperlukan untuk menyimpan data)

              // Setelah itu kembali ke halaman utama
              Navigator.pop(context);
            },
            child: Text('Simpan'),
          ),
        ],
      ),
    );
  }
}
