import 'dart:io';

void main() {
  int data = int.parse(stdin.readLineSync()!);
  
  int dia = data ~/ 1000000;
  int mes = (data ~/ 10000) % 100;
  int ano = data % 10000;
  
  List<int> diasPorMes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  List<String> mesesExtenso = [
    "janeiro", "fevereiro", "março", "abril", "maio", "junho",
    "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"
  ];
  
  if (mes < 1 || mes > 12 || dia < 1 || dia > diasPorMes[mes - 1]) {
    print("Data invalida!");
  } else {
    print("$dia de ${mesesExtenso[mes - 1]} de $ano");
  }
}