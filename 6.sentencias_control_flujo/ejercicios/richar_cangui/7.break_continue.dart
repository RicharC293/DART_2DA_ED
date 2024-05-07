main() {
  /// Continue
  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }
    print("El numero es: $i");
  }
  print("--------------");
  /// Break
  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      break;
    }
    print("El numero es: $i");
  }
  print("Fin del script");
}
