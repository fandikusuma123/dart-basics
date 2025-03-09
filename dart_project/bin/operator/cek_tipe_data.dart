void main() {
  var umur = 20;
  dynamic nama = 'Muhammad Fandi Kusuma';
  String kota = 'Jepara';
  double tinggi = 175.5;
  bool isStudent = false;

  // Mengecek tipe data dengan runtimeType
  print('Tipe data umur: ${umur.runtimeType}');
  print('Tipe data nama: ${nama.runtimeType}');
  print('Tipe data kota: ${kota.runtimeType}');
  print('Tipe data tinggi: ${tinggi.runtimeType}');
  print('Tipe data isStudent: ${isStudent.runtimeType}');
}
