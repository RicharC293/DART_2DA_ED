import 'dart:async';

/***
 * 
 * Manejo streams
 * 
 */

void main() {
  /// Crear un stream
  /// Los streams tambien tienen un control de typos ej <String>
  final streamController = StreamController<String>();

  /// Un stream funciona como un río
  /// El streamController es el río
  /// El stream es el agua que fluye por el río
  /// El streamController tiene dos métodos para controlar el flujo del stream
  /// sink: permite agregar datos al stream
  /// stream: permite obtener los datos del stream
  /// Para escuchar los datos del stream se usa el método listen
  /// Los streams en Flutter se usan para controlar los eventos de los widgets, para controlar eventos en tiempo real
  streamController.stream.listen((event) {
    print("Stream: $event");
  },
  onError: (error) {
    print("Error: $error");
  },
  onDone: () {
    print("Se completo el stream");
  },
  cancelOnError: false
  );

  /// Agregar datos al stream
  streamController.sink.add("Hola Mundo");

  /// Control de errores 
  /// El método listen tiene parámetros
  /// onData: se ejecuta cuando el stream tiene datos
  /// onError: se ejecuta cuando el stream tiene un error
  /// onDone: se ejecuta cuando el stream se completa
  /// cancelOnError: es un bool que indica si se cancela el stream cuando tiene un error
  
  /// Forzar un error 
  streamController.sink.addError("Error");

  /// Cerrar el stream
  /// Cuando se cierra el stream ya no se puede agregar datos al stream
  /// Cuando se cierra el stream ya no se puede escuchar los datos del stream
  /// Importante: Cerrar el stream cuando se termina de usar, esto permite que se detone el evento onDone
  streamController.close();

  // streamController.sink.add("Hola Mundo"); // Error

  print("Fin del main");
}