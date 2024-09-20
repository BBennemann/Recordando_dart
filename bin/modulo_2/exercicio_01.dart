import 'dart:io';

void main () {
  print("Digite um numero para ver o seu dobro.");
  double n = double.parse(stdin.readLineSync()!);
  print(n*2);
}