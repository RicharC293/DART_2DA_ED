//Ciclo while
import 'dart:io';

main() {
  var i = 0;

  // while(condicion) {
  //   opera todo el codigo que este dentro del bloque
  // }

  while (i < 5) {
    print("El valor es: $i");
    i++; // importante! -> controlar el while
  }

  print("Ingresa un numero que va a ser el total de veces del contador:");
  final contador = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  var control = 0;

  while (control <= contador) {
    control++;
    print(control);
  }
}
