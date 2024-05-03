main() {
  /// For - in siempre necesita un iterable -> Lista

  final List<int> lista = [1, 2, 3, 4, 5];

  ///         i=0 ; i<5 ; i++
  for (var i = 0; i < lista.length; i++) {
    if (i == 0) {
      print("Estoy empezando");
    }
    print("El numero es: ${lista[i]}");
  }

  /// Capturar el valor
  ///  [1, 2, 3, 4, 5]
  ///  valor = 1
  ///  valor = 2
  ///  ....
  for (var valor in lista) {
    print("El valor es: $valor");
  }

  /// forEach
  lista.forEach((valor) {
    print("El valor for-each es: $valor");
  });

  // final dias = ['lunes', 'martes', 'sabado', 'domingo'];

  // dias.forEach((element) {
  //   if(element == 'sabado') {
  //     print('es un fin de semana');
  //   } else {
  //     print('Es el dia: $element');
  //   }
  // });

  /// map
  final variableMap = lista.map((e) {
    print("El valor map es: $e");

    if (e == 3) {
      return 100;
    }

    return e; // que es el return..
  }).toList();

  print("VALOR : $variableMap");
}
