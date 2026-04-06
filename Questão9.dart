import 'dart:io';

void main() {
  
  int i;
  int parte1;
  int parte2;
  int soma;
  int multiplicacao;

  for (i = 1000; i <= 9999; i++) {
    parte1 = i ~/ 100;

    parte2 = i % 100;

    soma = parte1 + parte2;
    multiplicacao = soma * soma;

    if (multiplicacao == i) {
      print(
        '$i -> ($parte1 + $parte2 = $soma) e ($soma * $soma = $i)',
      );
    }
  }
}
