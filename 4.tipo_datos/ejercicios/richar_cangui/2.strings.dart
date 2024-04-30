main() {
  /// Secuencia de caracteres
  /// String
  String miPrimerString = "Nombre Apellido";

  String miSegundoString = 'Direccion';

  /// Uso comillas dobles
  String ingles = "It's easy";

  /// Cracteres especiales
  String precio = 'El valor es de \$5.00 dolares';

  print(precio);

  final longText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type "
      "specimen book. It has survived not only five centuries, but also the leap into "
      "electronic typesetting, remaining essentially unchanged. It was popularised in "
      "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and "
      "more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";

  final longText2 = '''
    Lorem Ipsum is simply dummy text of the printing and 
    typesetting industry. Lorem Ipsum has been the industry's standard 
    dummy text ever since the 1500s, when an unknown printer took a 
    galley of type and scrambled it to make a type specimen book. 
    It has survived not only five centuries, but also the leap into electronic typesetting, 
    remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
    sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like 
    Aldus PageMaker including versions of Lorem Ipsum
    ''';

  // print(longText);
  // print(longText2);

  // Interpolacion de strings
  // Primera forma
  // String + String

  final concat1 = "Mi nombre es: " + "Richar";

  print(concat1);

  // $varibale
  final miNombre = "Richar";

  final concat2 = "Mi nombre es: $miNombre";

  print(concat2);


  final concat3 = "Mi nombre es: ${'Richar: ${miNombre}'}";

  print(concat3);
  
}
