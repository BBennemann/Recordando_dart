import 'dart:io';

void main() {
  print("Digite o número de horas trabalhadas:");
  double horas = double.parse(stdin.readLineSync()!);
  double salario = horas*50*0.95;
  print("O salário liquido é RS $salario");
}