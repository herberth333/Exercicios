//Feito por Kaique Silva

import 'dart:io';

void exercicio20() {
  print('\n===== LABIRINTO =====');

  List<List<String>> labirinto = [
    ['E', ' ', 'X', ' '],
    [' ', 'X', ' ', ' '],
    [' ', ' ', 'X', ' '],
    [' ', ' ', ' ', 'S'],
  ];

  int lin = 0, col = 0;

  void imprimirLabirinto() {
    for (int i = 0; i < labirinto.length; i++) {
      for (int j = 0; j < labirinto[i].length; j++) {
        if (i == lin && j == col) {
          stdout.write('P ');
        } else {
          stdout.write('${labirinto[i][j]} ');
        }
      }
      print('');
    }
  }

  while (labirinto[lin][col] != 'S') {
    imprimirLabirinto();
    stdout.write('Movimento (W/A/S/D): ');
    String move = stdin.readLineSync()!.toUpperCase();

    int nLin = lin, nCol = col;
    if (move == 'W') nLin--;
    if (move == 'S') nLin++;
    if (move == 'A') nCol--;
    if (move == 'D') nCol++;

    if (nLin < 0 ||
        nLin >= labirinto.length ||
        nCol < 0 ||
        nCol >= labirinto[0].length ||
        labirinto[nLin][nCol] == 'X') {
      print('Movimento inválido!');
      continue;
    }

    lin = nLin;
    col = nCol;
  }

  print('\n Parabéns! Você chegou à saída do labirinto!');
}