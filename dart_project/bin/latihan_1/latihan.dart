import 'dart:io';

void main() {
  while (true) {
    print("\n=== PROGRAM DART MULTIFUNGSI ===");
    print("1. Cetak Nama dengan Kutip Tunggal & Ganda");
    print("2. Deklarasi Konstanta");
    print("3. Hitung Bunga Sederhana");
    print("4. Cetak Persegi dari Angka");
    print("5. Cetak Nama Lengkap");
    print("6. Hitung Hasil Bagi & Sisa");
    print("7. Tukar Dua Bilangan");
    print("8. Hapus Spasi dari String");
    print("9. Konversi String ke Int");
    print("10. Hitung Pembagian Tagihan");
    print("0. Keluar");

    stdout.write("Pilih program (0-10): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        cetakNama();
        break;
      case 2:
        deklarasiKonstanta();
        break;
      case 3:
        hitungBunga();
        break;
      case 4:
        cetakPersegi();
        break;
      case 5:
        cetakNamaLengkap();
        break;
      case 6:
        hitungBagiSisa();
        break;
      case 7:
        tukarBilangan();
        break;
      case 8:
        hapusSpasi();
        break;
      case 9:
        konversiStringKeInt();
        break;
      case 10:
        hitungTagihan();
        break;
      case 0:
        print("Terima kasih! Keluar dari program...");
        return;
      default:
        print("Pilihan tidak valid! Coba lagi.");
    }
  }
}

// 1. Cetak Nama dengan Kutip Tunggal & Ganda
void cetakNama() {
  stdout.write("Masukkan nama Anda: ");
  String nama = stdin.readLineSync()!;
  print("Hello, saya \"$nama\"");
  print("Hello, saya '$nama'");
}

// 2. Deklarasi Konstanta
void deklarasiKonstanta() {
  const int angka = 7;
  print("Nilai konstanta: $angka");
}

// 3. Hitung Bunga Sederhana
void hitungBunga() {
  stdout.write("Masukkan pokok pinjaman (P): ");
  double p = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan waktu (T) dalam tahun: ");
  double t = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tingkat bunga (R) dalam persen: ");
  double r = double.parse(stdin.readLineSync()!);

  double bunga = (p * t * r) / 100;
  print("Bunga sederhana adalah: $bunga");
}

// 4. Cetak Persegi dari Angka
void cetakPersegi() {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < angka; i++) {
    for (int j = 0; j < angka; j++) {
      stdout.write("* ");
    }
    print("");
  }
}

// 5. Cetak Nama Lengkap
void cetakNamaLengkap() {
  stdout.write("Masukkan nama depan: ");
  String namaDepan = stdin.readLineSync()!;
  stdout.write("Masukkan nama belakang: ");
  String namaBelakang = stdin.readLineSync()!;
  print("Nama lengkap: $namaDepan $namaBelakang");
}

// 6. Hitung Hasil Bagi & Sisa
void hitungBagiSisa() {
  stdout.write("Masukkan bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);

  int hasilBagi = a ~/ b;
  int sisa = a % b;

  print("Hasil bagi: $hasilBagi");
  print("Sisa bagi: $sisa");
}

// 7. Tukar Dua Bilangan
void tukarBilangan() {
  stdout.write("Masukkan bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Sebelum pertukaran: a = $a, b = $b");
  int temp = a;
  a = b;
  b = temp;
  print("Setelah pertukaran: a = $a, b = $b");
}

// 8. Hapus Spasi dari String
void hapusSpasi() {
  stdout.write("Masukkan sebuah kalimat: ");
  String kalimat = stdin.readLineSync()!;
  String tanpaSpasi = kalimat.replaceAll(" ", "");
  print("Hasil tanpa spasi: $tanpaSpasi");
}

// 9. Konversi String ke Int
void konversiStringKeInt() {
  stdout.write("Masukkan angka dalam bentuk string: ");
  String angkaString = stdin.readLineSync()!;
  int angka = int.parse(angkaString);
  print("Konversi ke integer: $angka");
}

// 10. Hitung Pembagian Tagihan
void hitungTagihan() {
  stdout.write("Masukkan total jumlah tagihan: ");
  double totalTagihan = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan jumlah orang: ");
  int jumlahOrang = int.parse(stdin.readLineSync()!);
  double pembagian = totalTagihan / jumlahOrang;
  print("Setiap orang harus membayar: Rp ${pembagian.toStringAsFixed(2)}");
}
