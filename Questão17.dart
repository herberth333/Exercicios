import 'dart:io';

List<int> lerVetor(int tamanho, String nomeDoVetor) {
  List<int> vetor = [];
  String? input1;
  int numeroDigitado;

  print('\nDigitando os valores do Vetor $nomeDoVetor');
  for (int i = 0; i < tamanho; i++) {
    stdout.write('Digite o valor da posição ${i + 1}: ');
    input1 = stdin.readLineSync();
    numeroDigitado = int.parse(input1!);
    vetor.add(numeroDigitado);
  }

  return vetor; 
}

List<int> somarVetores(List<int> vetor1, List<int> vetor2, int tamanho) {
  List<int> vetorSoma = [];
  int somaDaPosicao;

  for (int i = 0; i < tamanho; i++) {
    somaDaPosicao =
        vetor1[i] + vetor2[i]; 
    vetorSoma.add(somaDaPosicao);
  }

  return vetorSoma;
}

int somarTodosElementos(List<int> vetor, int tamanho) {
  int somaTotal = 0;

  for (int i = 0; i < tamanho; i++) {
    somaTotal += vetor[i];
  }

  return somaTotal;
}

void main() {
  int tamanhoVetores;
  String? input2;
  List<int> primeiroVetor = [];
  List<int> segundoVetor = [];
  List<int> terceiroVetor = [];
  int somaFinalDoTerceiroVetor;

  stdout.write('Qual será o tamanho dos vetores? ');
  input2 = stdin.readLineSync();
  tamanhoVetores = int.parse(input2!);

  primeiroVetor = lerVetor(tamanhoVetores, 'A');

  segundoVetor = lerVetor(tamanhoVetores, 'B');

  terceiroVetor = somarVetores(primeiroVetor, segundoVetor, tamanhoVetores);

  somaFinalDoTerceiroVetor = somarTodosElementos(terceiroVetor, tamanhoVetores);

  print('\n');
  print('RESULTADOS');
  print('Vetor 1 lido.......: $primeiroVetor');
  print('Vetor 2 lido.......: $segundoVetor');
  print('Vetor 3 (Soma).....: $terceiroVetor');
  print('-----------------------------------');
  print('A SOMA de todos os elementos do Vetor 3 é: $somaFinalDoTerceiroVetor');
}
