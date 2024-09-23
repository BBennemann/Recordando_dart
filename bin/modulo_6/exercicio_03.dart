import 'dart:io';

void main() {
  String? comando = '';
  List<String> nomes = [];
  List<List<double>> turma = [];
  String? escolha = '0';

  while (escolha != '4') {
    print('-='*20);
    print('Oque deseja fazer? \n1 - Registrar um aluno e notas'
        '\n2 - Ver notas\n3 - Ver media\n4 - Sair');
    print('-='*20);
    escolha = stdin.readLineSync();

    switch (escolha) {
      case '1':
        registrarAluno(nomes, turma);
        break;
      case '2':
        verNotas(nomes, turma);
        break;
      case '3':
        media(nomes, turma);
        break;
      case '4':
        break;
    }
  }
}

void registrarAluno(List<String> nomes, List<List<double>> turma) {
  print('Digite o nome do aluno: ');
  String? nome = stdin.readLineSync();
  if (nome != null && nome != '') {
    nomes.add(nome.toUpperCase());
    String? nota = '';
    List<double> notas = [];
    while (nota != 'fim') {
      print('Digite uma nota para o aluno de 1 a 10 (ou "fim" para terminar)');
      nota = stdin.readLineSync();
      if (nota != null && nota != '' && nota != 'fim') {
        notas.add(double.parse(nota));
      }
    }
    turma.add(notas);
  } else {
    print('Nome invalido');
    registrarAluno(nomes, turma);
  }
}

void media(List<String> nomes, List<List<double>> turma) {
  print('De qual aluno você quer ver a média: $nomes');
  String? nome = stdin.readLineSync();
  if (nome != null && nome != '') {
    nome = nome.toUpperCase();
    if (nomes.contains(nome)) {
      int i = nomes.indexOf(nome);
      int contador = 0;
      double media = 0;
      for (double nota in turma[i]) {
        media = media + nota;
        contador++;
      }
      print('Média do aluno é de: ${media/contador}');
    } else {
      print('Esse nome não está na turma, tente novamente!');
      media(nomes, turma);
    }
  } else {
    print('Não consigo trabalhar com nomes vazios!');
    media(nomes, turma);
  }
}

void verNotas(List<String> nomes, List<List<double>> turma) {
  print('De qual aluno você quer ver as notas: $nomes');
  String? nome = stdin.readLineSync();
  if (nome != null && nome != '') {
    nome = nome.toUpperCase();
    if (nomes.contains(nome)) {
      int i = nomes.indexOf(nome);
      print('Aqui está as notas do aluno $nome: ${turma[i]}');
    } else {
      print('Esse nome não está na turma, tente novamente!');
      media(nomes, turma);
    }
  } else {
    print('Não consigo trabalhar com nomes vazios!');
    media(nomes, turma);
  }
}