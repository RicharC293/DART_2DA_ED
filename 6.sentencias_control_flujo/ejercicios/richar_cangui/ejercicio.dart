import 'dart:io';

main() {
  final suma = 1;
  final resta = 2;
  final multiplicacion = 3;
  final division = 4;

  print(
      "Este es un script que te va a permitir realizar la operacion de dos numeros e incluir una operacion al resultado");

  print("Ingresa un numero: ");

  double? numero1 = double.tryParse(stdin.readLineSync() ?? '');

  if (numero1 == null) {
    print("Oye esto no es un numero, vuelve a ingresarlo: ");
    numero1 = double.tryParse(stdin.readLineSync() ?? '0') ?? .0;
  }

  print("Ingrese el siguiente numero: ");

  double? numero2 = double.tryParse(stdin.readLineSync() ?? '');

  if (numero2 == null) {
    print("Oye esto no es un numero, vuelve a ingresarlo");
    numero2 = double.tryParse(stdin.readLineSync() ?? '0') ?? .0;
  }

  print("Que operacion deseas realizar?\n");
  print("Suma ($suma)");
  print("Resta ($resta)");
  print("Multiplicación ($multiplicacion)");
  print("División ($division)");

  final operaciones = [suma, resta, multiplicacion, division];

  int? operacion = int.tryParse(stdin.readLineSync() ?? '');

  if (operacion == null || !operaciones.contains(operacion)) {
    print("No ingresaste una operación válida");
    operacion = int.tryParse(stdin.readLineSync() ?? '1') ?? 1;
  }

  double resultadoOperacion;

  if (operacion == 1) {
    resultadoOperacion = numero1 + numero2;
    print("$numero1 + $numero2 = $resultadoOperacion");
  } else if (operacion == 2) {
    resultadoOperacion = numero1 - numero2;
    print("$numero1 - $numero2 = $resultadoOperacion");
  } else if (operacion == 3) {
    resultadoOperacion = numero1 * numero2;
    print("$numero1 * $numero2 = $resultadoOperacion");
  } else {
    resultadoOperacion = numero1 / numero2;
    print("$numero1 / $numero2 = $resultadoOperacion");
  }

  print("Deseas continuar operando el resultado?\n");
  print("Si\n");
  print("No\n");

  final continuar = stdin.readLineSync();

  if(continuar != null && continuar.toLowerCase() == 'si') {
    print("OTRA OPERACION");
    ///TODO: ingresar el codigo para realizar la ultima operacion
  }

  print("Las operaciones han finalizado.......");

}
