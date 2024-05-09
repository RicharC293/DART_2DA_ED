void main() {
  /// Primer callback simple
  // saludar(
  //   "Richar",
  //   () {
  //     print("Otra cosa");
  //   },
  // );

  /// Con argumento
  // saludarArgumentos('Richar', (String nombre) {
  //   print("Hola $nombre");
  // });

  /// Casos en flutter
  // otraFuncion((saludo, suma) {
  //   print("El saludo es: $saludo");
  //   print("La suma es: $suma");
  // });

  funcionDatos((p0, p1) => '$p0 + $p1');
}

void saludar(String nombre, Function funcion) {
  print("El nombre es: $nombre");
  funcion();
}

void saludarArgumentos(String nombre, Function function) {
  function(nombre);
}

void otraFuncion(Function onSave) {
  final saludo = "Hola";
  final suma = 1 + 1;
  onSave(saludo, suma);
}

/// Una funcion void
/// Pendiente revisar este caso
/// void funcionVoid(VoidCallback void1)
void funcionVoid(void Function() void1) {
  void1();
}

/// Tipos de datos que vamos a retornar 
/// String -> el valor que puede retornar la funcion
/// (int) -> el tipo de dato del argumento
void funcionDatos(String Function(int, int) funcion) {
  final valor = funcion.call(1,2);
  print("El valor es: $valor");
}


