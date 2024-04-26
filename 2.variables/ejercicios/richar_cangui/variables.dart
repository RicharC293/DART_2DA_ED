main() {
  /// Puede cambiar su valor en en el transcurso del programa
  var nombre = "";
  print(nombre);
  nombre = "Richar 2";
  print(nombre);

  /// El valor no se puede cambiar en el transcurso del programa
  final cantidadCarritos = 6;
  print(cantidadCarritos);
  // cantidadCarritos = 10;

  /// Valor que no va a cambiar declarar en el tiempo de compilación.
  const velocidadDeLaLuz = 3000000;
  print(velocidadDeLaLuz);
  // velocidadDeLaLuz = 10;

  late String fecha;

  fecha = '25 de abril';
  
  print(fecha);


  /// Difference between [final] and [const]
  /// Diferencia entre [final] y [const]
  
  final finalName = [1,2,3];

  const constName = [1,2,3];

  /// This is valid
  /// Esto es válido
  finalName.add(4);
  print(finalName);

  /// This is invalid
  /// Esto es inválido
  constName.add(4);
  print(constName);

}
