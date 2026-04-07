import 'dart:io';

void main() {
  List<int> v1 = [];
  List<int> v2 = [];
  List<int> v3 = [];
  List<int> v4 = [];

  stdout.write('tamanho do vetor 1: ');
  int n1 = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < n1; i++) {
    stdout.write('valor ${i + 1}: ');
    v1.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  stdout.write('tamanho do vetor 2: ');
  int n2 = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < n2; i++) {
    stdout.write('valor ${i + 1}: ');
    v2.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  stdout.write('tamanho do vetor 3: ');
  int n3 = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < n3; i++) {
    stdout.write('valor ${i + 1}: ');
    v3.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  stdout.write('tamanho do vetor 4: ');
  int n4 = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < n4; i++) {
    stdout.write('valor ${i + 1}: ');
    v4.add(int.parse(stdin.readLineSync() ?? '0'));
  }

  List<int> v5 = [];
  v5.addAll(v1);
  v5.addAll(v2);
  v5.addAll(v3);
  v5.addAll(v4);
  v5.sort();

  List<int> intersecao = [];
  for (int x in v1) {
    if (v2.contains(x) && v3.contains(x) && v4.contains(x)) {
      if (!intersecao.contains(x)) {
        intersecao.add(x);
      }
    }
  }

  print('\nvetor ordenado:');
  print(v5);

  print('\ninterseçaoo dos 4 vetores:');
  print(intersecao);
}
