import 'dart:io';

void main () {
  List<String> categorias= <String>["pdf", "jpg", "png", "docx"];

  verifica(categorias);
}

void verifica(categorias) {
  print('Digite o formato do arquivo $categorias');
  String? categoria = stdin.readLineSync();
  if (categoria != null && categorias.contains(categoria)) {
    print('Formato valido: $categoria');
  } else {
    print('Formato invalido');
    verifica(categorias);
  }
}