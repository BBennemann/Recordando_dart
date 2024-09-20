import 'dart:io';

void main() {
  int pontosIniciais = 100;
  int pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");

  pontosRetirados = int.parse(stdin.readLineSync()!);

  int subtrai() {
    int pontosRestantes = pontosIniciais - pontosRetirados;
    return pontosRestantes;
  }

  int pontosRestantes = subtrai();

  print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
}