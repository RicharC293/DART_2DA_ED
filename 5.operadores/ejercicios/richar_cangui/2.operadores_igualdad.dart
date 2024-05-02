main() {
  final a = 10;
  final b = 5;

  /// Igual ==
  final igualdad = a == b; // siempre un booleano
  print(igualdad); // false

  /// Desigualdad o el no es igual !=
  final noIgual = a != b;
  print(noIgual); // true

  /// Mayor que >
  final esMayor = a > b;
  print(esMayor); // true

  /// Menor que <
  final esMenor = a < b;
  print(esMenor); // false

  /// Mayor o igual que >=
  final esMayorOIgual = a >= b;
  print(esMayorOIgual); // true

  /// Menor o igual que <=
  final esMenorOIgual = a <= b;
  print(esMenorOIgual); // false
}
