import 'dart:io';

void main() {
  int tamanhoN;
  int i;
  int numeroLido;
  String? input;

  List<int> vetor = [];
  Map<int, int> contagem = {};

  stdout.write('Quantos números você vai digitar (valor de N)? ');
  input = stdin.readLineSync();
  tamanhoN = int.parse(input!);

  print(''); 

  for (i = 0; i < tamanhoN; i++) {
    stdout.write('Digite o ${i + 1}º número: ');
    input = stdin.readLineSync();
    numeroLido = int.parse(input!);

    vetor.add(numeroLido);
  }

  for (i = 0; i < tamanhoN; i++) {
    numeroLido = vetor[i];

    if (contagem.containsKey(numeroLido)) {
      contagem[numeroLido] = contagem[numeroLido]! + 1;
    }
    else {
      contagem[numeroLido] = 1;
    }
  }

  print('\nRESULTADO');

  print('Vetor lido: $vetor\n');

  contagem.forEach((numero, quantidade) {
    print('$numero - $quantidade');
  });

  print('\nFim da execução!');
}
