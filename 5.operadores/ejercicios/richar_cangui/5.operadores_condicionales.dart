main() {
  /// Expresiones condicionales 
  /// condición ? expr1 : expr2; // condición ternaria
  /// Si la condición es verdadera retorna la expr1 si es falsa retorna la expr2
  
  final a = 10;
  final b = 5;

  final c = 5;

  /// 'a es igual a 10'
  final mensaje = a == c ? 'a es igual a $c' : 'a es diferente de $c';

  print(mensaje);

  /// Null aware ??
  
  final int? variableNula = 10;

  /// Si el valor de la variable es nula retorna el valor asignado con el null aware.
  print(variableNula ?? 19);

}