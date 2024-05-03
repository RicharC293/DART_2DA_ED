import 'dart:io';

main() {
  /// stdin.readLineSync
  print("Ingresa el nombre: ");
  final nombre = stdin.readLineSync();
  print("Mi nombre es: $nombre");
}