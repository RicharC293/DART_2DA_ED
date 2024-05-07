# Ejercicio Funciones
Vamos a optimizar el siguiente código:

* Extraer la información repetitiva y plantearlo mediante funciones 

```dart
import 'dart:io';

/***
 *  Ejercicio
 * 
 * Vamos a optimizar el siguiente código usando funciones
 * 
 * 
 */

void main() {

  print('=========== Usuario 1 =============');

  print('¿Cúal es su nombre?');
  String nombre = stdin.readLineSync() ?? '';

  print('¿Qué edad tienes?');
  String edad = stdin.readLineSync() ?? '';

  print('¿En qué país naciste?');
  String pais = stdin.readLineSync() ?? '';

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  print('Usuario 1 sin deducciones');
  print(usuario);

  double salario = 1500;
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  print(usuario);

  // Persona 2
  print('=========== Usuario 2 =============');

  print('¿Cúal es su nombre?');
  String nombre2 = stdin.readLineSync() ?? '';

  print('¿Qué edad tienes?');
  String edad2 = stdin.readLineSync() ?? '';

  print('¿En qué país naciste?');
  String pais2 = stdin.readLineSync() ?? '';

  final Map<String, dynamic> usuario2 = {
    'nombre': nombre2,
    'edad': edad2,
    'pais': pais2
  };

  print('Usuario 2 sin deducciones');
  print(usuario2);

  double salario2 = 1800;
  double deducciones2 = salario2 * 0.15;
  double salarioNeto2 = salario2 - deducciones2;

  usuario2['salario'] = salario2;
  usuario2['deducciones'] = deducciones2;
  usuario2['salarioNeto'] = salarioNeto2;

  print(usuario2);
}
```