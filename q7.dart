import 'dart:io';

void main() {
  double salario = double.parse(stdin.readLineSync()!);

  double reajuste;

  if (salario <= 300.00) {
    reajuste = salario * 1.50;
  } else {
    reajuste = salario * 1.30;
  }

  print("SALARIO COM REAJUSTE = ${reajuste.toStringAsFixed(2)}");
}
