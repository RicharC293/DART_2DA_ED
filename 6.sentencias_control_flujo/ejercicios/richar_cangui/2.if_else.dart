import 'dart:io';

main() {
  /// Sentencia de control if - else
  /// if(condicion) {
  ///  operacion
  /// } else {
  ///   operacion
  /// }

  print("Ingrese su edad: ");

  // Dato es null
  // Opcional y puede ser nulo
  // Tipo de dato
  // Parsear un string a un int -> int.parse, int.tryParse
  final edad = stdin.readLineSync() ?? '';

  /// Null en el tryParse -> hola pepito
  /// string vacio
  /// Caracteres especiales
  final edadInt = int.tryParse(edad) ?? 0;

  /// Si la edad del usuario es mayor o igual a 18 años entonces quiero que me imprima es mayor de edad,
  /// caso contrario imprimir menor de edad.
  if (edadInt >= 18) {
    print("Es mayor de edad");
  } else {
    print("Es menor de edad");
  }

  /// Multiples if
  /// Imprima es adolescente si su edad es mayor a 11 años
  /// Imprima es adulto si su edad es mayor a 40
  /// Imprima es niño si la edad es menor o igual a 11 años
  /// Imprima es un bebe si la edad es menor a 1 año
  /// Es mayor - Es adolescente - Es niño - es un bb
  if (edadInt > 40) {
    print("La persona es mayor");
  } else if (edadInt > 11) {
    print("La persona es adolescente");
  } else if (edadInt > 1) {
    print("Es un niño");
  } else {
    print("Es un BB");
  }
}
