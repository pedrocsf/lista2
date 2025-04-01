import 'dart:io';

void main() {
  stdout.write("Digite as notas: ");
  String? inputa = stdin.readLineSync()!;

  String NOTA1=inputa[0]+inputa[1]+inputa[2];
  String NOTA2=inputa[4]+inputa[5]+inputa[6];
  String NOTA3=inputa[8]+inputa[9]+inputa[10];

  double nota1 = double.parse(NOTA1);
  double nota2 = double.parse(NOTA2);
  double nota3 = double.parse(NOTA3);
  double media = (nota1 + nota2 + nota3) / 3;
  String resultado = media.toStringAsFixed(2);
  print('MEDIA = $resultado');
  if(media<6.0){
    print("REPROVADO");
  }else {
    print("APROVADO");
  }
}