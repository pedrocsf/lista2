import 'dart:io';

void main() {
  List<double> numbers = [];
  for (int i = 0; i < 4; i++) {
    numbers.add(double.parse(stdin.readLineSync()!));
  }
  numbers.sort();
  print(numbers.map((n) => n.toStringAsFixed(2)).join(", "));
}