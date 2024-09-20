import 'dart:io';

void main() {
  print("Seja bem-vindo! Qual o seu nome?");
  String? nome = stdin.readLineSync();
  print("Ola, $nome. Quantos anos você tem?");
  var idade = stdin.readLineSync();
  print("Ok, pode entrar $nome com $idade anos");
}