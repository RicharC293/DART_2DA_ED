void main() {
  saludo(
    edad: 10.0,
    esSoltero: false,
    nombre: "Richar",
  );
}

/// Argumento por nombre
/// {}
/// requeridos -> required
/// no sean requeridos -> String?
/// Nombre va a ser requerido
/// Edad va a ser opcional
/// Soltero -> requerido
void saludo({
  required String nombre,
  double? edad,
  required bool esSoltero,
}) {
  print("Mi nombre es: $nombre y mi edad es $edad y es soltero $esSoltero");
}
