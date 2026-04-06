import 'dart:io';

void main() {
  
  int qntNumerosUser;
  int sequenciaA =5; 
  int sequenciaB = 100;
  int sequenciaC = 2;
  int contador = 0;
  String? input;

  stdout.write('Quantos números você quer imprimir? ');
  input = stdin.readLineSync();
  qntNumerosUser = int.parse(input!);

  print('\nImprimindo os $qntNumerosUser termos:');

  while (contador < qntNumerosUser) {
   
    if (contador < qntNumerosUser) {
      stdout.write('$sequenciaA ');
      sequenciaA += 5;
      contador++;
    }

    
    if (contador < qntNumerosUser) {
      stdout.write('$sequenciaB ');
      sequenciaB -= 10;
      contador++;
    }

    
    if (contador < qntNumerosUser) {
      stdout.write('$sequenciaC ');
      sequenciaC *= 2;
      contador++;
    }
  }
  print('\n'); 
}
