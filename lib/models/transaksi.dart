class Transaksi {
  int id;
  int tukangOjekId;
  int harga;
  String timestamp;

  Transaksi({
    required this.id,
    required this.tukangOjekId,
    required this.harga,
    required this.timestamp,
  });
}
