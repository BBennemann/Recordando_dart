void main() {
  String texto = 'Parou! Este código não continua.';
  int index = 0;

  do {
    print(texto[index]);
    index++;
  } while (index < texto.length && texto[index - 1] != '!');
}