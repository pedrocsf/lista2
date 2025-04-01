import 'dart:io';

void main() {
  double nota = double.parse(stdin.readLineSync()!);

  String conceito;
  if (nota >= 9.0 && nota <= 10.0) {
    conceito = "A";
  } else if (nota >= 7.5 && nota < 9.0) {
    conceito = "B";
  } else if (nota >= 6.0 && nota < 7.5) {
    conceito = "C";
  } else {
    conceito = "D";
  }

  print("NOTA = ${nota.toStringAsFixed(1)} CONCEITO = $conceito");
}
