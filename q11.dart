import 'dart:io';

void main() {
  bool j = true;
  int i = 0;
  List<double> numeros = [];

  while (j) {
    String? numero = stdin.readLineSync();
    numeros.add(double.parse(numero!));
    i++;
    if (i == 3) {
      j = false;
    }
  }
  
  numeros.sort();
  List<String> partes = [];
  for (int i = 0; i < numeros.length; i++) {
    partes.add(numeros[i].toStringAsFixed(2));
  }
  String resultado = partes.join(", ");
  print(resultado);
}
