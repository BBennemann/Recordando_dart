import 'dart:io';

void main() {
  int idade = 0;
  String pais = '';

  print('Digite sua idade: ');
  String? entrada = stdin.readLineSync();
  if (entrada != null && entrada != "") {
    idade = int.parse(entrada);
  }

  print('Digite a sigla do seu pais: [BR, EUA, JP]');
  entrada = stdin.readLineSync();
  if (entrada != null && entrada != "") {
    pais = entrada.toUpperCase();
  }

  if ((pais == 'EUA' && idade >= 16) || (pais == 'BR' && idade >= 18) ||
      (pais == 'JP' && idade >= 20)) {
    print('Pode dirigir');
  } else {
    print('Não pode dirigir');
  }
}