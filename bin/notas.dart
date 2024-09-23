import 'dart:io';

void main() {
  String comando = '';
  List<String> notas = <String>[];
  while (comando != '3') {
    comando = getComando();

    switch (comando) {
      case '1':
        adicionarNota(notas);
      case '2':
        listarNotas(notas);
      case '3':
        print('Até mais');
        break;
    }
  }
}

String getComando() {
  print('-='*10);
  print('Digite um comando: \n1 - Adicionar nota, \n2 - Listar notas, \n3 - Sair');
  print('-='*10);
  List<String> comandos = <String>['1', '2', '3'];
  String? entrada = '';

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print('Comando invalido');
    entrada = getComando();
  }
  return entrada;
}

List<String> adicionarNota(List<String> notas) {
  print('Escreva uma nota: ');
  String? nota = '';

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print('Não é possivel adicionar notas vazias');
    adicionarNota(notas);
  }
  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print('${i + 1}° nota: ${notas[i]}');
  }
}