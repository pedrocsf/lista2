import 'dart:io';

void main() {
  List<double> valores = stdin.readLineSync()!.trim().split(' ').map(double.parse).toList();
  double A = valores[0], B = valores[1], C = valores[2];

  if ((B - C).abs() < A && A < (B + C) && (A - C).abs() < B && B < (A + C) && (A - B).abs() < C && C < (A + B)) {
    double perimetro = A + B + C;
    print("Perimetro = ${perimetro.toStringAsFixed(1)}");
  } else {
    double area = ((A + B) * C) / 2;
    print("Area = ${area.toStringAsFixed(1)}");
  }
}
