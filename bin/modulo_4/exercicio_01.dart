import 'dart:io';

void main () {
  List<String> categorias= <String>["eletronicos", "alimentos", "vestuario", "livros"];

  verifica(categorias);
}

void verifica(categorias) {
  print('Digite a categoria do produto $categorias');
  String? categoria = stdin.readLineSync();
  if (categoria != null && categorias.contains(categoria)) {
      print('Categoria valida: $categoria');
  } else {
    print('Categoria invalida');
    verifica(categorias);
  }
}