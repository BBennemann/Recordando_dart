import 'dart:io';

void main() {
  double n1 = 0;
  double n2 = 0;
  String operacao = '';
  List<String> operacoes = <String>["+", "-", "*", "/"];

  print("Digite um numero:");
  String? entrada = stdin.readLineSync();
  if (entrada != null && entrada != "") {
    n1 = double.parse(entrada);
  }

  operacao = getOperacao(entrada, operacao, operacoes);

  print("Digite outro numero:");
  entrada = stdin.readLineSync();
  if (entrada != null && entrada != "") {
    n2 = double.parse(entrada);
  }

  print("O resultado é: ");
  calcular(n1, n2, operacao);
}

String getOperacao(String? entrada, operacao, operacoes) {
  print("Qual operação deseja realizar? $operacoes");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (operacoes.contains(entrada)) {
      operacao = entrada;
    } else {
      print('Operação invalida');
      operacao = getOperacao(entrada, operacao, operacoes);
    }
  }
  return operacao;
}

void calcular(n1, n2, operacao) {
  switch (operacao) {
    case '+':
      soma(n1, n2);
      break;
    case '-':
      subtracao(n1, n2);
      break;
    case '*':
      multiplicacao(n1, n2);
      break;
    case '/':
      divisao(n1, n2);
      break;
  }
}

void soma(n1 ,n2) {
  print(n1 + n2);
}
void subtracao(n1 ,n2) {
  print(n1 - n2);
}
void divisao(n1 ,n2) {
  print(n1 / n2);
}void multiplicacao(n1 ,n2) {
  print(n1 * n2);
}
