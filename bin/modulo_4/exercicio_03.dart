import 'dart:io';

void main() {

  verifica();

}

void verifica() {
  print('Digite um número de 1 a 12 para saber o mês correspondente:');
  String? input = stdin.readLineSync();

  if (input != null && input != '') {
    int numero = int.parse(input);
    if (numero >= 1 && numero <= 12) {
      switch (numero) {
        case 1:
          print('Janeiro');
        case 2:
          print('Fevereiro');
        case 3:
          print('Março');
        case 4:
          print('Abril');
        case 5:
          print('Maio');
        case 6:
          print('Junho');
        case 7:
          print('Julho');
        case 8:
          print('Agosto');
        case 9:
          print('Setembro');
        case 10:
          print('Outubro');
        case 11:
          print('Novembro');
        case 12:
          print('Dezembro');
    }
  } else {
      print('Numero invalido');
      verifica();
    }
  }
}