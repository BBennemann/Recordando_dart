import 'dart:io';

void main() {
  print("Digite a idade da primeira pessoa:");
  int idade1 = int.parse(stdin.readLineSync()!);
  print("Digite a idade da segunda pessoa:");
  int idade2 = int.parse(stdin.readLineSync()!);
  print("Digite a idade da terceira pessoa:");
  int idade3 = int.parse(stdin.readLineSync()!);
  int soma = idade1 + idade2 + idade3;
  print("A média das idades é ${soma/3}");
}