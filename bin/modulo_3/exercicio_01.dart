import 'dart:io';

void main () {
  int idade = 0;
  print("Digite sua idade:");
  String? entrada = stdin.readLineSync();
  if (entrada != null && entrada != '') {
    idade = int.parse(entrada);
    if (idade < 18) {
      print('Não pode dirigir');
    } else {
      print('Dale motorista');
    }
  }
}