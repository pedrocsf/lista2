import 'dart:io';

void main() {

  List<String> entrada = stdin.readLineSync()!.split(' ');
  
  int conta = int.parse(entrada[0]);
  double consumo = double.parse(entrada[1]);
  String tipo = entrada[2];

  double valorConta = 0.0;

  switch (tipo) {
    case 'R': 
      valorConta = 5.00 + (consumo * 0.05);
      break;
    case 'C': 
      if (consumo <= 80) {
        valorConta = 500.00;
      } else {
        valorConta = 500.00 + ((consumo - 80) * 0.25);
      }
      break;
    case 'I': 
      if (consumo <= 100) {
        valorConta = 800.00;
      } else {
        valorConta = 800.00 + ((consumo - 100) * 0.04);
      }
      break;
    default:
      print("Tipo de consumidor inválido");
      return;
  }

  print("CONTA = $conta");
  print("VALOR DA CONTA = ${valorConta.toStringAsFixed(2)}");
}