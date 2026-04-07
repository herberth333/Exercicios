//Feito por Kaique Silva

void exercicio01() {
  const Map<String, double> boloPrecos = {
    'ovos': 5.5,
    'chocolate': 7.5,
    'cenoura': 6.5,
  };

  const List<String> ordem = [
    'ovos',
    'chocolate',
    'limao',
  ];

  double total = 0;

  for (final bolo in ordem) {
    if (boloPrecos.containsKey(bolo)) {
      total += boloPrecos[bolo]!;
    } else {
      print('$bolo não está no cardápio');
    }
  }

  print('Total = $total');
}