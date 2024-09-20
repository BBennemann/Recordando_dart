import 'dart:io';

void main() {
  double n1 = double.parse(stdin.readLineSync()!);
  double n2 = double.parse(stdin.readLineSync()!);

  void soma() {
    print(n1 + n2);
  }
  void subtracao() {
    print(n1 - n2);
  }
  void divisao() {
    print(n1 / n2);
  }void multiplicacao() {
    print(n1 * n2);
  }

  soma();
  subtracao();
  divisao();
  multiplicacao();
}
