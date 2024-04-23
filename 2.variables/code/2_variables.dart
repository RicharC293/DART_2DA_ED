main() {

  /// [var] is a reserved keyword to declare a variable in Dart.
  /// This value can be changed.
  /// 
  /// [var] es una palabra reservada para declarar una variable en Dart.
  /// Este valor puede ser cambiado.
  var name = "Richar";

  /// [final] is a reserved keyword to declare a variable in Dart.
  /// This value can't be changed.
  /// [final] es una palabra reservada para declarar una variable en Dart.
  /// Este valor no puede ser cambiado.
  final lastName = "Cangui";

  /// [const] is a reserved keyword to declare a variable in Dart.
  /// This value can't be changed.
  /// [const] es una palabra reservada para declarar una variable en Dart.
  /// Este valor no puede ser cambiado.
  const age = 25;

  /// [late] is a reserved keyword to declare a variable in Dart.
  /// This value can be changed but must be initialized before use.
  /// [late] es una palabra reservada para declarar una variable en Dart.
  /// Este valor puede ser cambiado pero debe ser inicializado antes de usarlo.
  late String fullName;

  /// data types
  /// tipos de datos
  String myName = "Richar Cangui";


  /// Difference between [final] and [const]
  /// Diferencia entre [final] y [const]
  
  final finalName = [1,2,3];

  const constName = [1,2,3];

  /// This is valid
  /// Esto es válido
  finalName.add(4);

  /// This is invalid
  /// Esto es inválido
  // constName.add(4);
  

}