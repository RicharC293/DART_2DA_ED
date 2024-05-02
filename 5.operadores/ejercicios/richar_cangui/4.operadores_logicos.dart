main() {
  final a = 10;
  final b = 10;

  /// AND (y)  &&
  /// Valores boleanos
  /// true && true = true
  /// false && true = false
  /// true && false = false
  /// false && false = false // OJO... 
  ///                   true  &&   true
  final operadorAnd = a == 10 && b == 10;
  print(operadorAnd);

  /// OR (ó)  ||
  /// Valores boleanos 
  /// true || true = true
  /// false || true = true
  /// true || false = true
  /// false || false = false
  ///                 false || true
  final operadorOr = a == 5 || b == 10;
  print(operadorOr); // true

  /// NOT (no) !
  /// !false = true
  /// !true = false
  final operadorNot = a == 5;
  print(operadorNot);
  print(!operadorNot);







}