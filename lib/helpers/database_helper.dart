import 'package:flutter/material.dart';

class HalamanFormTransaksi extends StatelessWidget {
  const HalamanFormTransaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Transaksi'),
      ),
      body: const Center(
        child: Text('Halaman Form Transaksi'),
      ),
    );
  }
}
