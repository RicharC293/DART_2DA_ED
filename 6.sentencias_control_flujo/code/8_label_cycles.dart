/***
 * 
 * etiquetado de cyclos
 * Dart permite etiquetar los ciclos para poder romperlos
 * 
 */

main() {
  whileExterno:
  while (true) {
    print("while externo");
    whileInterno:
    while (true) {
      print("while interno");
      break whileExterno;
    }
  }

  forExterno:
  for (var i = 0; i < 5; i++) {
    print("for externo");
    forInterno:
    for (var j = 0; j < 5; j++) {
      print("for interno");
      break forExterno;
    }
  }

  doExterno:
  do {
    print("do externo");
    doInterno:
    do {
      print("do interno");
      break doExterno;
    } while (true);
  } while (true);
}
