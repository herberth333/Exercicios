import 'dart:io';

void main() {
  int totalHomens = 0;
  int totalMulheres = 0;

  int homensComExperiencia = 0;
  int somaIdadeHomensComExperiencia = 0;

  int homensMais45 = 0;

  int mulheresMenos30ComExperiencia = 0;

  String nomeMulherMaisNovaComExperiencia = '';
  int menorIdadeMulherComExperiencia = 999;

  while (true) {
    stdout.write('Nome: ');
    String nome = stdin.readLineSync() ?? '';

    if (nome.toUpperCase() == 'FIM') {
      break;
    }

    stdout.write('Sexo (M/F): ');
    String sexo = (stdin.readLineSync() ?? '').toUpperCase();

    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync() ?? '0');

    stdout.write('Tem experiência no serviço? (S/N): ');
    String experiencia = (stdin.readLineSync() ?? '').toUpperCase();

    if (sexo == 'M') {
      totalHomens++;

      if (experiencia == 'S') {
        homensComExperiencia++;
        somaIdadeHomensComExperiencia += idade;
      }

      if (idade > 45) {
        homensMais45++;
      }
    }

    if (sexo == 'F') {
      totalMulheres++;

      if (idade < 30 && experiencia == 'S') {
        mulheresMenos30ComExperiencia++;
      }

      if (experiencia == 'S' && idade < menorIdadeMulherComExperiencia) {
        menorIdadeMulherComExperiencia = idade;
        nomeMulherMaisNovaComExperiencia = nome;
      }
    }
  }

  double mediaIdadeHomensComExperiencia = homensComExperiencia > 0
      ? somaIdadeHomensComExperiencia / homensComExperiencia
      : 0;

  double percentualHomensMais45 = totalHomens > 0
      ? (homensMais45 * 100) / totalHomens
      : 0;

  print('\nResultados:');
  print('a) numero de candidatos do sexo feminino: $totalMulheres');
  print('   numero de candidatos do sexo masculino: $totalHomens');
  print(
    'b) idade media dos homens que já tem experiência no serviço: ${mediaIdadeHomensComExperiencia.toStringAsFixed(2)}',
  );
  print(
    'c) porcentagem dos homens com mais de 45 anos em relação ao total de homens: ${percentualHomensMais45.toStringAsFixed(2)}%',
  );
  print(
    'd) numero de mulheres com idade inferior a 30 anos e com experiência no serviço: $mulheresMenos30ComExperiencia',
  );
  print(
    'e) nome da candidata com a menor idade e que já tem experiência no serviço: ${nomeMulherMaisNovaComExperiencia.isEmpty ? 'nenhuma' : nomeMulherMaisNovaComExperiencia}',
  );
}
