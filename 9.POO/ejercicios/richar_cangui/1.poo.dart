void main() {
  /// Con variables
  final Map<String, dynamic> perro = {
    "nombre": "Perrito",
    "edad": 10,
    "color": "Azul",
  };

  final Map<String, dynamic> gato = {
    "nombre": "Gatito",
    "edad": 10,
    "color": "Azul",
  };

  final Map<String, dynamic> ave = {
    "nombre": "Ave",
    "edad": 10,
    "color": "Azul",
  };

  print(perro["nombre"]);

  /// Como clases
  /// Posicionales
  // final perroObjeto = Animal("Perrito", 10, "Negro");

  // final gatoObjeto = Animal("Gatito", 2, "Amarillo");

  // final aveObjeto = Animal("Ave", 1, "Verde");

  /// Nombre todos son requeridos
  final perroObjeto = Animal(nombre: "Perrito", edad: 10, color: "Negro");
  perroObjeto.comer();
  // print(perroObjeto.nombre);
  // print(perroObjeto.color);
  // print(perroObjeto.nombreMayuscula);
  // print(perroObjeto.nombreYEdad);

  final otroPerro = Animal(nombre: "Bau", edad: 1);
  otroPerro.comer();

  final estadoMascota =  otroPerro.estado();
  print(estadoMascota);
  
  // print(otroPerro.nombre);
  // print(otroPerro.color);
  // otroPerro.actualizarNombre = "Nuevo Nombre";
  // print(otroPerro.nombre);

  /// Atributo mutable
  // perroObjeto.nombre = "Otro nombre";
  // print(perroObjeto.nombre);

  /// Atributos inmutables
  // perroObjeto.edad = 10;
}

/// Clases
/// class <NombreClase> {
/// }

// Perro -> nombre, edad , color
// Gato -> nombre, edad, color
// Ave -> nombre, edad, color

class Animal {
  // atributos -> datos
  // Mutables -> son valores lo vamos a poder editar desde el objeto
  String nombre;
  // Inmutables -> son valores valores que nunca van a poder editarse
  final int edad;
  final String color;

  // constructor -> Contruir la clase
  // posicional
  // Animal(this.nombre, this.edad, this.color);
  // nombres
  // Animal({
  //   required String this.nombre,
  //   required int this.edad,
  //   required String this.color,
  // });
  // nombres default
  Animal({
    required String this.nombre,
    required int this.edad,
    String this.color = 'Blanco',
  });

  // getters - setters -> valores a los que vamos a poder acceder o los valores que vamos a editar.

  /// getters -> obtener valores -> get
  /// Tipo de dato - get - nombre - funcion flecha o bloques
  /// Flecha
  String get nombreMayuscula => nombre.toUpperCase();

  /// Bloque
  String get nombreYEdad {
    final mayuscula = nombreMayuscula;
    return "$mayuscula - $edad";
  }

  /// setters -> set valores -> set
  /// set - nombre () - funcion flecha o bloque
  // flecha
// set actualizarNombre(String nuevoNombre) => nombre = nuevoNombre;
  // bloque
  set actualizarNombre(String nuevoNombre) {
    nombre = nuevoNombre;
  }

  // metodos(funciones) -> operaciones a realizar
  void comer() {
    print("El $nombre esta comiendo");
  }

  String estado() {
    if (edad < 1) {
      return 'Cachorro';
    } else if (edad < 2) {
      return "Adulto";
    } else {
      return "Adulto mayor";
    }
  }
}
