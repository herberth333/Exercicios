import 'dart:io';

void main() {

  String? codigo;
  String? curso;
  String? nome;
  String? sexo;
  double pontuacao;
  String? input;

  
  List<String> candidatosCCMais2500 = []; 

  String nomeMenorPontMasc = '';
  double menorPontMasc =
      5001; 

  String codigoMaiorPontSI = '';
  double maiorPontSI =
      -1; 

  int totalCandidatos = 0;
  int totalMasc = 0;
  int totalFem = 0;

  while (true) {
    print('\nNovo Candidato');

    
    stdout.write('Código (Digite 0000 para encerrar o cadastro): ');
    codigo = stdin.readLineSync();

    if (codigo == '0000') {
      break; 
    }

  
    stdout.write(
      'Curso (CC para Ciência da Computação / SI para Sistemas de Informação): ',
    );
    curso = stdin.readLineSync()?.toUpperCase();

    stdout.write('Nome do candidato: ');
    nome = stdin.readLineSync();

  
    stdout.write('Sexo (M/F): ');
    sexo = stdin.readLineSync()?.toUpperCase();

    
    stdout.write('Pontuação (0 a 5000): ');
    input = stdin.readLineSync();
    pontuacao = double.parse(input!);

    totalCandidatos++;

    if (sexo == 'M') {
      totalMasc++;
    } else if (sexo == 'F') {
      totalFem++;
    }

    if (curso == 'CC' && pontuacao > 2500) {
      candidatosCCMais2500.add(
        'Código: $codigo | Nome: $nome | Pontuação: $pontuacao',
      );
    }

    
    if (sexo == 'M' && pontuacao < menorPontMasc) {
      menorPontMasc = pontuacao; 
      nomeMenorPontMasc = nome!; 
    }

    if (sexo == 'M' && curso == 'SI' && pontuacao > maiorPontSI) {
      maiorPontSI = pontuacao;
      codigoMaiorPontSI = codigo!; 
    }
  }

  print('\n');
  print('RESULTADOS FINAIS');
 

  if (totalCandidatos > 0) {
    print('\na) Candidatos de CC com mais de 2500 pontos:');
    if (candidatosCCMais2500.isEmpty) {
      print('   -> Nenhum candidato atendeu a esse critério.');
    } else {
      for (String candidato in candidatosCCMais2500) {
        print('   -> $candidato');
      }
    }

    print('\nb) Candidato do sexo masculino com MENOR pontuação geral:');
    if (nomeMenorPontMasc != '') {
      print('   -> Nome: $nomeMenorPontMasc (Pontuação: $menorPontMasc)');
    } else {
      print('   -> Nenhum candidato do sexo masculino foi cadastrado.');
    }

    print('\nc) Candidato do sexo masculino com MAIOR pontuação em SI:');
    if (codigoMaiorPontSI != '') {
      print('   -> Código: $codigoMaiorPontSI (Pontuação: $maiorPontSI)');
    } else {
      print('   -> Nenhum candidato do sexo masculino foi cadastrado em SI.');
    }

    print('\nd) Percentual geral de inscritos por sexo:');
    double percentualMasc = (totalMasc / totalCandidatos) * 100;
    double percentualFem = (totalFem / totalCandidatos) * 100;

    print('   -> Masculino: ${percentualMasc.toStringAsFixed(1)}%');
    print('   -> Feminino:  ${percentualFem.toStringAsFixed(1)}%');
  } else {
    print('\nNenhum candidato foi cadastrado no sistema.');
  }
}
