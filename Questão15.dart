import 'dart:io';

void main() {
  int quantidadeBois;
  int numeroBoi;
  double pesoBoi;
  double pesoMinimo;
  double pesoMaximo;
  int i;
  bool encontrou;
  String? input;
  String? continuar;

  List<int> numerosBois = [];
  List<double> pesosBois = [];

  stdout.write('Quantos bois vão ser cadastrados na fazenda? ');
  input = stdin.readLineSync();
  quantidadeBois = int.parse(input!);

  for (i = 0; i < quantidadeBois; i++) {
    print('\n--- Dados do Boi ${i + 1} ---');

    stdout.write('Número do Boi: ');
    input = stdin.readLineSync();
    numeroBoi = int.parse(input!);

    stdout.write('Peso do Boi (em kg, use ponto!): ');
    input = stdin.readLineSync();
    pesoBoi = double.parse(input!);

    numerosBois.add(numeroBoi);
    pesosBois.add(pesoBoi);
  }

  do {
 
    stdout.write('Digite o peso mínimo para a busca: ');
    input = stdin.readLineSync();
    pesoMinimo = double.parse(input!);

    stdout.write('Digite o peso máximo para a busca: ');
    input = stdin.readLineSync();
    pesoMaximo = double.parse(input!);

    print('\n--- RESULTADO DA PESQUISA ---');
    encontrou = false;

    for (i = 0; i < quantidadeBois; i++) {
      if (pesosBois[i] >= pesoMinimo && pesosBois[i] <= pesoMaximo) {
        print('Boi Número: ${numerosBois[i]} | Peso: ${pesosBois[i]} kg');
        encontrou = true;
      }
    }

    if (encontrou == false) {
      print(
        'Nenhum boi encontrado com peso entre $pesoMinimo e $pesoMaximo kg.',
      );
    }

    stdout.write('\nDeseja fazer uma nova pesquisa? (S/N): ');
    continuar = stdin.readLineSync()?.toUpperCase();
  } while (continuar == 'S');

  print('\nPrograma encerrado.');
}
