import 'dart:io';
import 'dart:math';

void main() {
  List<String> entrada = stdin.readLineSync()!.split(' ');
  double a = double.parse(entrada[0]);
  double b = double.parse(entrada[1]);
  double c = double.parse(entrada[2]);

  if (a == 0) {
    print("Não é uma equação do segundo grau");
    return;
  }

  double delta = pow(b, 2) - (4 * a * c);

  if (delta > 0) {
    double x1 = (-b - sqrt(delta)) / (2 * a);
    double x2 = (-b + sqrt(delta)) / (2 * a);
    if (x1 > x2) {
      double temp = x1;
      x1 = x2;
      x2 = temp;
    }
    print("RAIZES DISTINTAS");
    print("X1 = ${x1.toStringAsFixed(2)}");
    print("X2 = ${x2.toStringAsFixed(2)}");
  } else if (delta == 0) {
    double x1 = -b / (2 * a);
    print("RAIZ UNICA");
    print("X1 = ${x1.toStringAsFixed(2)}");
  } else {
    print("RAIZES IMAGINARIAS");
  }
}