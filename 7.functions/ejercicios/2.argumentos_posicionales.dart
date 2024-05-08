// final nombreYApellido = "Richar Cangui"; -> Variable global
void main() {
  /// Argumentos posicionales
  /// Como maximo para 2 variables - argumentos
  saludo('Richar');
  customPrint(saludo);

  /// Llama a la funcion con multiples argumentos
  variosArgumentos("Richar", 12, true);

  /// Llamada al argumento nulo
  argumentoNulo(null);

  /// Opcional
  opcionales("Rihcar");
}

void saludo(String nombre) {
  print("Hola $nombre");
}

void customPrint(Object object) {
  /// Function -> String o double -> Funcion
  // if (object is Function) {
  //   object.call();
  //   return;
  // }

  print("Esto es un log: ${object.toString()}");
}

/// Varios argumentos de posicion
/// Separados de una coma
void variosArgumentos(String nombre, double edad, bool esSoltero) {
  print("El nombre es: $nombre");
  print("La edad es: $edad");
  print("Es soltero: $esSoltero");
}

/// No usar esto
// void noTipoDeDato(nombre) {
// }

/// Como puedo pasarle un nulo
void argumentoNulo(String? nombre) {
  print(nombre);
}

/// Argumentos opcionales
void opcionales(String? nombre, [double? edad]) {
  print("El nombre es: $nombre y su edad es $edad");
}
