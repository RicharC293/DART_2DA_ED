/*** 
 * 
 * Callbacks
 * 
 */

void main(List<String> args) {

  /// Forma tradicional
  saludar("Richar", (nombre) {
    print("Hola $nombre");
  });

  /// Lambda
  saludar("Richar", (nombre) => print("Hola $nombre"));


  /// Ejemplo en Flutter
  /// En flutter se usa mucho los callbacks para widgets que necesitan un evento
  /// Ejemplo:
  ///  RaisedButton(
  ///   onPressed: () {
  ///    print("Hola Mundo");
  ///  },
  /// child: Text("Boton"),
  /// )
  /// 

}

void saludar(String nombre, Function callback) {
  callback(nombre);
}
