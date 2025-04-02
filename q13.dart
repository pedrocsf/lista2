import 'dart:io';

void main() {
  List<int> numeros = [];
  for (int i = 0; i < 4; i++) {
    numeros.add(int.parse(stdin.readLineSync()!));
  }
  
  numeros.sort();
  int soma = numeros[0] + numeros[1] + numeros[2];
  print("$soma\n");
}
