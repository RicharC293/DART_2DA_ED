import 'dart:io';

void main() {
  print('=========== Usuario 1 =============');

  final Map<String, dynamic> usuario = crearUsuario();

  print('Usuario 1 sin deducciones');
  print(usuario);
  final salario = calcularSalario(1500);
  usuario.addAll(salario);
  print(usuario);

  // Persona 2
  print('=========== Usuario 2 =============');

  final Map<String, dynamic> usuario2 = crearUsuario();

  print('Usuario 2 sin deducciones');
  print(usuario2);
  final salario2 = calcularSalario(2000);
  usuario2.addAll(salario2);
  print(usuario2);

  /// Reto 
  /// Utiliza las sentencias de control para simplificar más este código
  /// Pista: usa for, while o do while,  suerte!!
}

/// Me creo un método para ingresar datos por consola
/// En este método se recopila toda la información del usuario
Map<String, dynamic> crearUsuario() {
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

  return usuario;
}

/// me creo un método que me permite calcular el salario
Map<String, dynamic> calcularSalario(double salario) {
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  final datosSalario = {
    'salario': salario,
    'deducciones': deducciones,
    'salarioNeto': salarioNeto,
  };

  return datosSalario;
}
