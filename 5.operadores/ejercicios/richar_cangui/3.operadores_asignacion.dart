main() {
  /// Operador asignacion =
  var a = 10;

  /// Asignación null aware ??=
  var b;
  b ??= 10; // Dart error
  print(b); //10

  /// Asignación += (suma el valor de la variable a la variable)
  var c = 10;
  c += 5;
  print(c);

  /// Asignación -= (restar el valor de la variable a la variable)
  var d = 10;
  d -= 5;
  print(d);

  /// Asignación *= (multiplica el valor de la variable a la variable)
  var e = 1;
  e *= 5; // e = e * 5;
  print(e);

  /// Asignación /= (divide el valor de la variable a la variable)
  var f = (10).toDouble();
  f /= 0;

  /// Cuatro decimales
  print(f.toStringAsFixed(4));

  /// Practicar
  // final valorFixed = f.toStringAsFixed(4);
  // print(double.parse(valorFixed));

  print(f);
}
