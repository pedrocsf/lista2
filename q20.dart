import 'dart:io';

void main() {
  try {
    List<String> input = stdin.readLineSync()!.trim().split(' ');
    double rendaBruta = double.parse(input[0]);
    int qtdPessoas = int.parse(input[1]);
    int tipoEscola = int.parse(input[2]);
    int etnia = int.parse(input[3]);

    double rendaPerCapita = rendaBruta / qtdPessoas;
    double salarioMinimo = 937.00;

    if (tipoEscola == 2) {
      if (rendaPerCapita <= 1.5 * salarioMinimo) {
        if (etnia == 1 || etnia == 2 || etnia == 3) {
          print("ALUNO COTISTA (L2)");
        } else {
          print("ALUNO COTISTA (L1)");
        }
      } else {
        if (etnia == 1 || etnia == 2 || etnia == 3) {
          print("ALUNO COTISTA (L4)");
        } else {
          print("ALUNO COTISTA (L3)");
        }
      }
    } else {
      print("ALUNO NAO COTISTA");
    }
  } catch (e) {
    print("Erro na entrada de dados. Certifique-se de inserir valores válidos.");
  }
}
