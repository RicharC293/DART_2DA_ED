import 'dart:async';

void main() {
  /// StreamController
  final streamController = StreamController<String>();

  /// Quien se encarga de escuchar
  streamController.stream.listen(
    (event) {
      print("Stream: $event");
    },
    onError: onError,
    onDone: () {
      print("ON_DONE");
    },
    cancelOnError: true,
  );

  /// Agregar datos
  streamController.sink.add("Hola Mundo");

  /// Agregar un error
  streamController.sink.addError("ERROR!!!");

  streamController.sink.add("Hola Mundo 2");

  /// Siempre se cierran
  /// Usar con precaución y tenerlo muy en cuenta cuando se lo realiza
  streamController.close();

  /// Esto produce un error
  // streamController.sink.add("Hola Mundo 3");

  print("Fin del script");
}

void onError(event) {
  print("ERROR: $event");
}
