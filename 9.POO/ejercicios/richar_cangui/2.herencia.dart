void main() {
  // final perro = Mascota(nombre: 'Perrito', edad: 1.0, color: "Blanco");
  // print(perro.nombre);
  // perro.comer();

  final perro = Perro(
    alimentacionPerro: "Croquetas",
    nombre: "Perrito",
    edad: 1,
    color: "Blanco",
  );

  print(perro.nombre);

  perro.comer();

  final gato = Gato(
      nombre: "Pepito", edad: 1, color: "Amarillo", alimentacionGato: "Arroz");
  gato.comer();
  gato.mensaje();
}

/// Perro -> *nombre, *edad , *color, alimentacion -> *comer, ladrad
/// Gato -> nombre, edad, color, alimentacion -> comer, maullar
/// Hamster -> nombre, edad, color, alimentacion -> comer, correr

class Mascota {
  /// atributos
  final String nombre;
  final double edad;
  final String color;

  /// constructor
  Mascota({required this.nombre, required this.edad, required this.color});

  /// metodos
  void comer() {
    print("$nombre está comiendo");
  }
}

class Perro extends Mascota {
  /// atributos
  final String alimentacionPerro;
  Perro({
    required super.nombre,
    required super.edad,
    required super.color,
    required this.alimentacionPerro,
  });

  /// Sobreescritura o override
  @override
  void comer() {
    print("Otra cosa");
    print("El perro esta comiendo");
  }
}

class Gato extends Mascota {
  final String alimentacionGato;
  Gato(
      {required super.nombre,
      required super.edad,
      required super.color,
      required this.alimentacionGato});

  @override
  void comer() {
    print("El gato esta comiendo");
  }

  void mensaje() {
    super.comer();
    print(alimentacionGato);
    print("Es un gato y tiene $edad años");
  }
}
