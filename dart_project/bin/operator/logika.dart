void main() {
  var A = true;
  var B = false;

  var expr1 = A && B; // false (karena AND: true && false = false)
  var expr2 = A || B; // true (karena OR: true || false = true)
  var expr3 = !A; // false (karena NOT: !true = false)
  var expr4 = !B; // true (karena NOT: !false = true)

  // Menampilkan hasil logika ke konsol
  print('A && B = $expr1'); // false
  print('A || B = $expr2'); // true
  print('!A = $expr3'); // false
  print('!B = $expr4'); // true
}
