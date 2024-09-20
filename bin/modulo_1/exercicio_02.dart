import 'dart:io';

void main() {
  print("Olá, me chamo Dart. Qual o seu nome?");
  String? nome = stdin.readLineSync();
  print("Muito prazer, $nome. Vamos fazer vários programas juntos.");
}