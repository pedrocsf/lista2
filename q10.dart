import 'dart:io';

void main() {
  int numero = int.parse(stdin.readLineSync()!);

  if (numero <= 0 || numero > 9999) {
    print("Numero invalido!");
    return;
  }

  int unidades = numero % 10;
  int dezenas = (numero ~/ 10) % 10;
  int centenas = (numero ~/ 100) % 10;
  int milhares = (numero ~/ 1000) % 10;

  String ordem;
  if (numero < 10) {
    ordem = "primeira ordem";
  } else if (numero < 100) {
    ordem = "segunda ordem";
  } else if (numero < 1000) {
    ordem = "terceira ordem";
  } else {
    ordem = "quarta ordem";
  }

  List<String> partes = [];
  if (milhares > 0) partes.add("$milhares milhar${milhares > 1 ? 'es' : ''}");
  if (centenas > 0) partes.add("$centenas centena${centenas > 1 ? 's' : ''}");
  if (dezenas > 0) partes.add("$dezenas dezena${dezenas > 1 ? 's' : ''}");
  if (unidades > 0) partes.add("$unidades unidade${unidades > 1 ? 's' : ''}");

  List<String> valores = [];
  if (milhares > 0) valores.add("${milhares * 1000}");
  if (centenas > 0) valores.add("${centenas * 100}");
  if (dezenas > 0) valores.add("${dezenas * 10}");
  if (unidades > 0) valores.add("$unidades");

  print("($ordem) $numero = ${partes.join(" + ")} = ${valores.join(" + ")}");
}