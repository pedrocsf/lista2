import 'dart:io';

void main() {
  int ano = int.parse(stdin.readLineSync()!);

  if (ano > 1582 && (ano % 4 == 0 && (ano % 100 != 0 || ano % 400 == 0))) {
    print("ANO BISSEXTO");
  } else {
    print("ANO NAO BISSEXTO");
  }
}
