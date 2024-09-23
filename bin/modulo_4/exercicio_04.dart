import 'dart:io';

void main () {
  double saldo = 1000;
  List<String> operacoes = <String>["deposito", "retirada", "transferencia", "pagamento"];

  verifica(operacoes, saldo);
}

void verifica(operacoes, saldo) {
  print('Digite a operação que deseja realizar $operacoes');
  String? operacao = stdin.readLineSync();
  if (operacao != null && operacoes.contains(operacao)) {
    if (operacao == 'deposito') {
      entrada(operacao, saldo);
    } else if (operacao == 'retirada') {
      saida(operacao, saldo);
    } else if (operacao == 'transferencia') {
      saida(operacao, saldo);
    } else if (operacao == 'pagamento') {
      saida(operacao, saldo);
    }
  } else {
    print('Formato invalido');
    verifica(operacoes, saldo);
  }
}

void entrada(operacao, saldo) {
  print('Quanto dinheiro deseja usar no $operacao');
  String? entrada = stdin.readLineSync();
  if (entrada != null && entrada != ''){
    saldo += double.parse(entrada);
    print('Saldo final: $saldo');
  }
}

void saida(operacao, saldo) {
  print('Quanto dinheiro deseja usar no(a) $operacao');
  String? entrada = stdin.readLineSync();
  if (entrada != null && entrada != ''){
    if (saldo > double.parse(entrada)) {
      saldo -= double.parse(entrada);
      print('Saldo final: $saldo');
    } else {
      print('Saldo insuficiente');
      saida(operacao, saldo);
    }
  }
}