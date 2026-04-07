//Feito por Kaique Silva

import 'dart:io';
import 'dart:math';

void exercicio06() {
  Random random = Random();
  int numeroSecreto = random.nextInt(100) + 1;

  int minimo = 1;
  int maximo = 100;
  int tentativas = 0;

  print('\n===== JOGO DE ADIVINHAÇÃO =====');
  print('Tente adivinhar o número entre 1 e 100.');

  while (true) {
    stdout.write('Digite um número entre $minimo e $maximo: ');
    int chute = int.parse(stdin.readLineSync()!);

    // valida se está dentro do intervalo
    if (chute < minimo || chute > maximo) {
      print('⚠️ Digite um número dentro do intervalo!');
      continue;
    }

    tentativas++;

    if (chute == numeroSecreto) {
      print('\n🎉 Parabéns! Você acertou!');
      print('Número secreto: $numeroSecreto');
      print('Tentativas: $tentativas');
      break;
    }

    if (chute > numeroSecreto) {
      print('O número secreto é menor.');
      maximo = chute - 1;
    } else {
      print('O número secreto é maior.');
      minimo = chute + 1;
    }

    print('O número está entre $minimo e $maximo\n');
  }
}