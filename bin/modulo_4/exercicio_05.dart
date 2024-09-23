import 'dart:io';

void main () {
  List<String> categorias = <String>["cartao", "boleto", "paypal", "pix"];

  verifica(categorias);
}

void verifica(categorias) {
  print('Digite o formato de pagamento $categorias');
  String? categoria = stdin.readLineSync();
  if (categoria != null && categorias.contains(categoria)) {
    print('Formato valido: $categoria');
  } else {
    print('Formato invalido');
    verifica(categorias);
  }
}