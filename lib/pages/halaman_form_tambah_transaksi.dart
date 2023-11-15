import 'package:flutter/material.dart';

class HalamanFormTambahTransaksi extends StatefulWidget {
  @override
  _HalamanFormTambahTransaksiState createState() =>
      _HalamanFormTambahTransaksiState();
}

class _HalamanFormTambahTransaksiState
    extends State<HalamanFormTambahTransaksi> {
  String selectedTukangOjek = ''; // Variabel untuk menyimpan tukang ojek yang dipilih
  TextEditingController hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Transaksi'),
      ),
      body: Column(
        children: [
          // Dropdown untuk memilih tukang ojek
          DropdownButton<String>(
            value: selectedTukangOjek,
            onChanged: (String? newValue) {
              setState(() {
                selectedTukangOjek = newValue!;
              });
            },
            items: <String>['Tukang Ojek 1', 'Tukang Ojek 2', 'Tukang Ojek 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          // Field untuk harga (teks angka)
          TextField(
            controller: hargaController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Harga'),
          ),
          ElevatedButton(
            onPressed: () {
              // Logika untuk menyimpan data transaksi
              String tukangOjek = selectedTukangOjek;
              String harga = hargaController.text;
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
