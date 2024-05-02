main() {
  /// Suma +
  final suma = 10 + 2.0;
  print(suma);

  /// Resta -
  final resta = 10 - 2;
  print(resta);

  /// Negación -expresión (variable, numero) -(8) = -8 -(-8) = 8
  final negado = -resta;
  print(negado);

  /// Multiplicación *
  final multiplicacion = 10 * 2;
  print(multiplicacion);

  /// División "/"
  final division = 10 / 2;
  print(division);

  /// 10   | 3
  ///  -9    3
  ///   1
  
  /// Parte entera de la división ~/ 
  final divEntera = 10 ~/ 3;
  print(divEntera);

  /// Módulo -> %
  final modulo = 10 % 3;
  print(modulo);

  /// Incrementos 
  double incremento = 6;
  /// Incremento de postfijo
  incremento++; // incremento = incremento + 1;
  print(incremento);
  /// Incremento de prefijo 
  ++incremento; // incremento = incremento + 1;
  print(incremento);

  double incremento2 = 6;
  double incremento3 = 6;

  final resultado1 = incremento2++; // retorna incremento2 = 6.0
  final resultado2 = ++incremento3; // retornar incremento3 + 1 = 7.0
  print("RESULTADO1: $resultado1");
  print("RESULTADO2: $resultado2");
  print(incremento2);
  print(incremento3);

  /// Decremento --
  /// Repetir
}
