import 'dart:io';

void main() {
  double saldo = 1000.0; // Saldo inicial em reais

  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);
  if (valorPix > saldo) {
    print('Saldo induficiente');
  } else {
    print('Pix feito');
    print(saldo - valorPix);
  }
}