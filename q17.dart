import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync()!);
  String numeroStr = numero.toString();
  
  if (numeroStr.length > 5) {
    print("NUMERO INVALIDO");
  } else {
    String invertido = numeroStr.split('').reversed.join('');
    if (numeroStr == invertido) {
      print("PALINDROMO");
    } else {
      print("NAO PALINDROMO");
    }
  }
}