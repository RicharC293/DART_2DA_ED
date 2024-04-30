main() {
  /// Lista de elementos
  /// [objeto1, objeto2, objeto3]

  List<int> lista = [1, 2, 3, 4, 5];

  ///                0, 1, 2, 3, 4

  // print(lista);

  /// primer elemento
  // print(lista.first); // 1

  /// ultimo elemento
  // print(lista.last); // 5

  /// acceder a un elemento en especifico
  // print(lista[2]);

  // print(lista[0]);

  /// Operadores de manejo de listas
  /// Retornan un valor -> Tipo de dato int, num, bool, etc.
  /// No te renornal -> void
  lista.add(6);

  // print(lista);

  /// addAll
  final lista2 = [10, 11, 12];
  lista.addAll(lista2);
  // print(lista);
  // print(lista2);
  // print(lista);

  //remove
  final value1 = lista.remove(6);
  print(value1);
  print(lista);
  // El elemento del valor 
  final value12 = lista.remove(6);
  print(value12);
  print(lista);

  // EL elemento en la posición 
  lista.removeAt(0);

  /// Listas de Listas
  List<List<String>> valor = [
    ['10', '11'],
    ['11', '12']
  ];
}
