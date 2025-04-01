import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);

  int y = (x < 1) ? x : (x == 1) ? 0 : x * x;

  print("Y = $y");
}