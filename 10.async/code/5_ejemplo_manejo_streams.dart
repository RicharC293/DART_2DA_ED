import 'dart:async';

void main() async {
  final streamController = StreamController<String>();

  streamController.stream.listen(
    (event) {
      print(event);
    },
    cancelOnError: false,
    onError: (_) {
      print("Error se detuvo el reloj");
    },
    onDone: () => print("Feliz año nuevo"),
  );

  finDeAnio(streamController);

  print("Fin del main");

  /// Tip de clase: para escuchar multiples veces el mismo stream se puede usar el método .broadcast()
  /// final streamController = StreamController<String>.broadcast();
  /// streamController.stream.listen((event) {
  ///  print(event);
  /// });
  /// streamController.stream.listen((event) {
  /// print(event);
  /// });
}

Future<void> finDeAnio(StreamController streamController) async {
  for (int i = 10; i > 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    if (i == 5) {
      streamController.sink.addError("Error");
      continue;
    }
    streamController.sink.add(i.toString());
  }
  await streamController.close();
}
