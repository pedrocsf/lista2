import 'dart:io';

void main() {
  int i = int.parse(stdin.readLineSync()!.trim());
  double a = double.parse(stdin.readLineSync()!.trim());
  double b = double.parse(stdin.readLineSync()!.trim());
  double c = double.parse(stdin.readLineSync()!.trim());

  List<double> valores = [a, b, c];

  if (i == 1) {
    valores.sort();
  } else if (i == 2) {
    valores.sort((x, y) => y.compareTo(x));
  } else if (i == 3) {
    double maior = valores.reduce((curr, next) => curr > next ? curr : next);
    double menor = valores.reduce((curr, next) => curr < next ? curr : next);
    double meio = valores.firstWhere((x) => x != maior && x != menor);
    valores = [meio, maior, menor];
  }

  print("${valores[0].toStringAsFixed(2)} ${valores[1].toStringAsFixed(2)} ${valores[2].toStringAsFixed(2)}");
}
