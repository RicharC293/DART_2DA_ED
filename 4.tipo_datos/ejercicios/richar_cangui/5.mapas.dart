main() {
  /// Tipo datos -> clave : valor
  final mapa = {
    "int": 10,
    "double": 20.0,
    "boolean": false,
    "Lista": ["1", "2", "3"],
    "Map": {
      "lat": 10.00,
      "lng": 10,
    }
  };

  /// {"clave":"valor"}
  final Map<String, int> mapaEdades = {
    "Francisco": 25,
    "Richar": 10,
  };

  /// Mapa paises
  final Map<String, String> mapaPaises = {
    "pais_1": "Ecuador",
    "10": "Perú",
  };

  /// final Map<String, Widget> pantallas = {'admin': Pantallax, 'user': Pantallay}
  /// final Map<String, dynamic>

  /// Acceder a los valores del mapa
  print(mapa["int"]);

  // final valorLista = mapa["Lista"]![0]; Esto nos da un error

  // Cast de los datos
  // as
  final valorListaOk = (mapa["Lista"] as List<String>);

  final valorDouble = mapa["double"];

  // final valorBool = mapa["boolean"] as int;

  print(mapa["Lista"].runtimeType);

  // print(valorBool);

  // print(valorListaOk);

  /// Como obtener el tipo de dato
  print(mapa["Lista"].runtimeType);

  /// Ahora vamos a acceder al valor de la "lng" en la variable mapa
  print((mapa["Map"] as Map)["lng"]);

  /// Mapa de mapas
  ///  {
  ///   "clave": {
  ///              "clave" : "valor"
  ///             }
  ///  }
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

  final direccion = latacunga!["direccion"];

  final calle1 = direccion["calle_1"];

  // print(calle1);

  /// Editar valores de los mapas
  final Map<String, dynamic> persona = {
    "name": "Richar",
    "age": 28,
    "is_single": true,
  };

  print(persona["name"]);

  /// Como se actualiza el valor de un mapa 
  persona["name"] = "RICHAR";

  print(persona["name"]);

  persona["name"] = 10.0;

  print(persona["name"]);

  print(persona);

  /// Metodos, getters.
  persona.remove("name");

  print(persona);

  persona["name"] = "RICHAR";
  persona["name2"] = "RICHAR";
  persona["name3"] = "RICHAR";

  print(persona);

  /// Subo un ejemplo de ordenamiento... 

}
