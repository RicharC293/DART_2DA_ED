/*** 
 * 
 * Debemos estar claros de como es el flujo de ejecución de un feature
 * 
 */

void main() {
  print("INICIA_MAIN");

  // aqui no se espera a que se complete el future, pero se ejecuta despues, por que ocurrira esto?
  // Esto se debe a que el future se ejecuta en un hilo diferente al main, por lo que el main no espera a que se complete el future
  // Future(() => print("Hola Mundo"));
  

  // Espera 1 segundo antes de imprimir
  // Future.delayed(Duration(seconds: 1), () => print("Hola Mundo"));

  print("FINALIZA_MAIN");
}
