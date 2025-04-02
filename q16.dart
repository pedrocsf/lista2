import 'dart:io';

void main() {
  List<String> entrada = stdin.readLineSync()!.split(' ');
  int matricula = int.parse(entrada[0]);
  double salarioMinimo = double.parse(entrada[1]);
  int dependentes = int.parse(entrada[2]);
  double salarioFuncionario = double.parse(entrada[3]);
  double taxaImposto = double.parse(entrada[4]);

  double impostoBruto;
  if (salarioFuncionario > 12 * salarioMinimo) {
    impostoBruto = 0.2 * salarioFuncionario;
  } else if (salarioFuncionario > 5 * salarioMinimo) {
    impostoBruto = 0.08 * salarioFuncionario;
  } else {
    impostoBruto = 0.0;
  }

  double impostoLiquido = impostoBruto - (dependentes * 300);
  double impostoPago = (taxaImposto / 100) * salarioFuncionario;
  double resultado = impostoLiquido - impostoPago;

  print("MATRICULA = $matricula");
  print("IMPOSTO BRUTO = ${impostoBruto.toStringAsFixed(2)}");
  print("IMPOSTO LIQUIDO = ${impostoLiquido.toStringAsFixed(2)}");
  print("RESULTADO = ${resultado.toStringAsFixed(2)}");

  if (resultado < 0) {
    print("IMPOSTO A RECEBER");
  } else if (resultado == 0) {
    print("IMPOSTO QUITADO");
  } else {
    print("IMPOSTO A PAGAR");
  }
}