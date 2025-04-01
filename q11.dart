import 'dart:io';

void main() {
  List<double> numeros = stdin.readLineSync()!
      .split(' ')
      .map((e) => double.parse(e))
      .toList();

  numeros.sort();

  print(numeros.map((n) => n.toStringAsFixed(2)).join(", "));
}