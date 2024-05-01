main() {
  /// Null Safety o seguridad nula
  
  double x;

  // print(x);

  /// Como le decimos que es nulo 
  /// ? -> el valor puede ser nulo
  double? y;

  print(y);


  /// Como asegurar que un valor no es nulo
  /// ! -> permite decir que estoy seguro que el valor no es nulo
  double? z;
  z = 10.0;
  // print(z!); // Nota 

  final Map<String, Map<String, dynamic>> mapaDeMapas = {
    "latacunga": {
      "lat": 15.0,
      "lng": 10.0,
      "direccion": {
        "calle_1": "calle",
        "calle_2": "calle",
      }
    }
  };

  final latacunga = mapaDeMapas["latacunga"];

  final direccion = latacunga?["direccion"];

  final calle1 = direccion?["calle_1"];

  // print(calle1);

  final Map<String, Map<String, dynamic>?> mapaDeMapas2 = {
    "latacunga": {
      "lat": null,
      "lng": 10.0,
    },
    "ambato": {
      "lat": 1.1,
      "lng": 1.1,
    },
  };

  /// Acceder al valor -> mapa 
  // print(mapaDeMapas2["latacunga"]);
  // print(mapaDeMapas2["latacunga"]!["lat"]);

  // print(mapaDeMapas2["ambato"]!["lng"]); // Null check operator used on a null value

  // print(mapaDeMapas2["ambato"]?["lng"]);

  /// Null aware 
  /// ?? -> permite asignar un valor a una variable que sea nula
  int existe = 10;

  int? puedeNoExistir = null;

  // puedeNoExistir == null ? 100 : puedeNoExistir
  existe = puedeNoExistir ?? 100;

  print(existe);

  final ambato = mapaDeMapas2["ambato"] ?? {"lat": 10.0, "lng": 10.0};

  print(ambato["lng"]);

}