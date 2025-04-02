import 'dart:io';

void main() {
  int cc = int.parse(stdin.readLineSync()!);
  int dr = int.parse(stdin.readLineSync()!);
  int rt = int.parse(stdin.readLineSync()!);

  int grau;
  if (cc < 7 && dr > 50 && rt > 80000) {
    grau = 10;
  } else if (cc < 7 && dr > 50) {
    grau = 9;
  } else if (cc < 7) {
    grau = 8;
  } else {
    grau = 7;
  }

  print("ACO DE GRAU = $grau\n");
}
