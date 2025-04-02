import 'dart:io';

void main() {
  List<String> numerosStr = stdin.readLineSync()!.trim().split(' ');
  List<int> numeros = numerosStr.map(int.parse).toList();
  List<String> ordem = stdin.readLineSync()!.trim().split(' ');

  numeros.sort();

  Map<String, int> valores = {
    'A': numeros[0],
    'B': numeros[1],
    'C': numeros[2],
  };

  print("${valores[ordem[0]]} ${valores[ordem[1]]} ${valores[ordem[2]]}");
}
