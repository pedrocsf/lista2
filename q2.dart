import 'dart:io';

void main(){
  stdout.write("Digite os valores: ");
    String inputa = stdin.readLineSync()!;
    if(inputa.length != 1){
      print("DIGITO INVALIDO");
      return;
    }
    String inputb = stdin.readLineSync()!;
    if(inputb.length != 1){
      print("DIGITO INVALIDO");
      return;
    }
    String inputc = stdin.readLineSync()!;
    if(inputc.length != 1){
      print("DIGITO INVALIDO");
      return;
    }

  String out = inputa + inputb + inputc;
  double out1 = double.parse(out);
  double out2= out1*out1;
  String out3 = out2.toStringAsFixed(0);
  stdout.write('$out, $out3');

}