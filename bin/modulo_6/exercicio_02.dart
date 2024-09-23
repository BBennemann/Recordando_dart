import 'dart:io';

void main() {
  String? comando = '';
  List<String> nomes = [];
  List<List<double>> turma = [];

  registrar(nomes, turma);

  print(nomes);
  print(turma);
}

void registrar(List<String> nomes, List<List<double>> turma) {
  print('Digite o nome do aluno: ');
  String? nome = stdin.readLineSync();
  nomes.add(nome!);
  String? nota = '';
  List<double> notas = [];
  while (nota != 'fim') {
    print('Digite uma nota para o aluno (ou "fim" para terminar)');
    nota = stdin.readLineSync();
    if (nota != 'fim') {
      notas.add(double.parse(nota!));
    }
  }
  turma.add(notas);
}