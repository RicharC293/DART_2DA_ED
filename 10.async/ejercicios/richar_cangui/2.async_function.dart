Future<void> main() async {
  // saludar();
  // print( await saludar());
  // await finDeAnio();

  try {
    await nombreDeUsuario();
  } catch (err) {
    print("Ha ocurrido un error");
  } finally {
    print("Fin del script");
  }
}

/// Programacion asincrona
/// async - await

// void saludar() {
//   print("Hola Mundo");
// }

// Future<void> saludar() async {
//   print("Hola Mundo");
// }

// String saludar() {
//   return "Hola Mundo";
// }

/// Instance of 'Future<String>' -> Future<String>
Future<String> saludar() async {
  return "Hola Mundo";
}

// Future<String> saludar() => "Hola Mundo";

/// Crear una función que cuente del 10 - 0 -> contador de fin de año
/// 10 - 9 - 8 ....... - 0 -> "Feliz año"

// void finDeAnio() {
//   for(int i = 10; i>0 ; i--) {
//     print(i);
//   }
//   print("Feliz Año");
// }

Future<void> finDeAnio() async {
  for (int i = 10; i > 0; i--) {
    print(i);
    await Future.delayed(Duration(seconds: 1));
  }
  print("Feliz Año");
}

Future<String> nombreDeUsuario() async {
  try {
    print("Se ejecuta");

    /// codigo
    final nombre = await getNombre();
    print("el nombre es: $nombre");
    return nombre;
  } catch (err) {
    print("Ocurrio un error");
    print(err);

    /// codigo en caso de error
    // return '';
    rethrow;
  } finally {
    /// codigo que siempre se ejecuta al finalizar
    print("Siempre se ejecuta");
  }
}

Future<String> getNombre() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception("Error!!!!");
  // return "Usuario patito";
}
