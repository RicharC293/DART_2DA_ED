import 'dart:async';

/***
 * 
 * Stream
 * 
 */

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    print("Valor: $value");
    sum += value;
  }
  return sum;
}

Future<void> main() async {
  // final stream = Stream<int>.fromIterable([1,2,3,4,5]);
  // final sum = await sumStream(stream);
  // print('Sum: $sum');

  /// Crear un stream
  final streamYear = Stream.fromIterable([10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]);
  await endOfYearStream(streamYear);
}

/// Como se podria hacer el ejemplo de contador de fin de año con streams?

/// Crear una función de fin de año -> ejemplo
Future<void> endOfYear(int second) async {
  await Future.delayed(Duration(seconds: 1));
  print(second);
}

Future<void> endOfYearStream(Stream<int> stream) async {
  await for (var value in stream) {
    await endOfYear(value);
  }
  print("Feliz año nuevo");
}
