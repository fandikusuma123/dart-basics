import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("\n=== PROGRAM DART MULTIFUNGSI ===");
    print("1. Cek Kelayakan Memilih");
    print("2. Cek Angka (Positif/Negatif/Nol)");
    print("3. Hitung Faktorial");
    print("4. Tebak Angka (1-10)");
    print("5. Cetak Daftar dalam Urutan Terbalik");
    print("6. Cek Tahun Kabisat");
    print("7. Cek Hari Kerja atau Akhir Pekan");
    print("8. Hitung Jumlah Digit dalam Angka");
    print("9. Permainan Tebak Angka (1-100)");
    print("10. Cetak Kata dan Panjangnya");
    print("0. Keluar");

    stdout.write("Pilih program (0-10): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        cekKelayakanMemilih();
        break;
      case 2:
        cekPositifNegatif();
        break;
      case 3:
        hitungFaktorial();
        break;
      case 4:
        tebakAngka();
        break;
      case 5:
        cetakDaftarTerbalik();
        break;
      case 6:
        cekTahunKabisat();
        break;
      case 7:
        cekHariKerjaAkhirPekan();
        break;
      case 8:
        hitungJumlahDigit();
        break;
      case 9:
        permainanTebakAngka();
        break;
      case 10:
        cetakKataDanPanjang();
        break;
      case 0:
        print("Terima kasih! Keluar dari program...");
        return;
      default:
        print("Pilihan tidak valid! Coba lagi.");
    }
  }
}

// 1. Cek Kelayakan Memilih
void cekKelayakanMemilih() {
  stdout.write("Masukkan usia Anda: ");
  int usia = int.parse(stdin.readLineSync()!);
  if (usia >= 17) {
    print("Anda memenuhi syarat untuk memilih.");
  } else {
    print("Anda belum memenuhi syarat untuk memilih.");
  }
}

// 2. Cek Angka (Positif/Negatif/Nol)
void cekPositifNegatif() {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  switch (angka.sign) {
    case 1:
      print("Angka tersebut adalah POSITIF.");
      break;
    case -1:
      print("Angka tersebut adalah NEGATIF.");
      break;
    case 0:
      print("Angka tersebut adalah NOL.");
      break;
  }
}

// 3. Hitung Faktorial Menggunakan While Loop
void hitungFaktorial() {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  int faktorial = 1;
  int i = angka;
  while (i > 0) {
    faktorial *= i;
    i--;
  }

  print("Faktorial dari $angka adalah $faktorial.");
}

// 4. Tebak Angka (1-10) dengan Do-While
void tebakAngka() {
  int angkaRahasia = Random().nextInt(10) + 1;
  int tebakan;
  do {
    stdout.write("Tebak angka (1-10): ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan != angkaRahasia) print("Salah! Coba lagi.");
  } while (tebakan != angkaRahasia);

  print("Selamat! Anda menebak angka yang benar.");
}

// 5. Cetak Daftar dalam Urutan Terbalik
void cetakDaftarTerbalik() {
  List<String> daftar = ['Apel', 'Mangga', 'Jeruk', 'Pisang'];
  print("Daftar dalam urutan terbalik:");
  for (String item in daftar.reversed) {
    print(item);
  }
}

// 6. Cek Tahun Kabisat
void cekTahunKabisat() {
  stdout.write("Masukkan tahun: ");
  int tahun = int.parse(stdin.readLineSync()!);

  if ((tahun % 4 == 0 && tahun % 100 != 0) || (tahun % 400 == 0)) {
    print("$tahun adalah tahun kabisat.");
  } else {
    print("$tahun bukan tahun kabisat.");
  }
}

// 7. Cek Hari Kerja atau Akhir Pekan
void cekHariKerjaAkhirPekan() {
  stdout.write("Masukkan hari dalam seminggu: ");
  String hari = stdin.readLineSync()!.toLowerCase();

  switch (hari) {
    case 'senin':
    case 'selasa':
    case 'rabu':
    case 'kamis':
    case 'jumat':
      print("$hari adalah hari kerja.");
      break;
    case 'sabtu':
    case 'minggu':
      print("$hari adalah akhir pekan.");
      break;
    default:
      print("Hari tidak valid.");
  }
}

// 8. Hitung Jumlah Digit dalam Angka
void hitungJumlahDigit() {
  stdout.write("Masukkan angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  int jumlahDigit = 0;
  int temp = angka.abs();
  while (temp > 0) {
    temp ~/= 10;
    jumlahDigit++;
  }

  print("Jumlah digit dalam angka $angka adalah $jumlahDigit.");
}

// 9. Permainan Tebak Angka (1-100)
void permainanTebakAngka() {
  int angkaRahasia = Random().nextInt(100) + 1;
  int tebakan;
  do {
    stdout.write("Tebak angka (1-100): ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan > angkaRahasia) {
      print("Terlalu besar! Coba lagi.");
    } else if (tebakan < angkaRahasia) {
      print("Terlalu kecil! Coba lagi.");
    }
  } while (tebakan != angkaRahasia);

  print("Selamat! Anda menebak angka yang benar.");
}

// 10. Cetak Kata dan Panjangnya
void cetakKataDanPanjang() {
  List<String> kataKata = [
    'Dart',
    'Flutter',
    'Pemrograman',
    'Mobile',
    'Coding'
  ];

  print("Kata dan panjangnya:");
  for (String kata in kataKata) {
    print("$kata - ${kata.length} karakter");
  }
}
