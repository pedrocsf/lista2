import 'dart:io';

void main() {

  int horas = int.parse(stdin.readLineSync()!);


  int gruposDeTresHoras = horas ~/ 3;
  int horasRestantes = horas % 3;
  double valor = (gruposDeTresHoras * 10) + (horasRestantes * 5);


  print("O VALOR A PAGAR E = ${valor.toStringAsFixed(2)}");
}
