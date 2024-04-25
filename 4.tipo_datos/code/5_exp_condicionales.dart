/**
 * 
 * Una forma rápida de evaluar dos condiciones sin la necesidad de un if-else
 * 
 */

main() {
  /// condition ? expr1 : expr2
  /// Si la condición es true, retorna expr1, de lo contrario retorna expr2

  final a = 10;
  final b = 5;

  print(a == 10 ? 'a es igual a 10' : 'a no es igual a 10'); // a es igual a 10

  /// expr1 ?? expr2
  /// Si expr1 es null, retorna expr2, de lo contrario retorna expr1

  var c;
  var d = 10;

  print(c ?? d); // 10
}
