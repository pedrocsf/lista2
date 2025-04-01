import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync()!);

  if (numero % 3 == 0 && numero % 5 == 0) {
    print("O NUMERO E DIVISIVEL");
  } else {
    print("O NUMERO NAO E DIVISIVEL");
  }
}
