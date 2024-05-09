void main() {
  // callbackFunction();

  saludo(callbackFunction);

  saludo((){
    print("Cualquier cosa");
    //
    //
  });
}

String callbackFunction() {
  print("Hola");
  return "";
}

String saludo(Function callback) {
  callback();
  return "";
}