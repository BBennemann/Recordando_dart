import 'dart:io';

void main() {
  print("Digite o valor da compra: ");
  double valor = double.parse(stdin.readLineSync()!);
  int cupons = (valor/50).floor();
  print("Você ganhou $cupons cupons.");
}