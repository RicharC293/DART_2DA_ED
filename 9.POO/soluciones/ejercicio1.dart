void main() {
  final cuentaZero = Cuenta.zero(titular: 'Richar');
  final cuenta = Cuenta(titular: 'Richar', cantidad: 100.0);

  cuenta.retirar(10);
  print(cuenta.cantidadOrZero);
  print(cuenta.toString());
}

class Cuenta {
  final String titular;
  double? cantidad;

  Cuenta({required this.titular, this.cantidad});

  /// Podemos crear varios constructores por nombre, como lo ves en este ejemplo
  Cuenta.zero({required this.titular, this.cantidad = 0});

  String get titularCuenta => this.titular;

  String get cantidadEnCuenta => this.cantidad?.toStringAsFixed(2) ?? '0.00';

  double get cantidadOrZero => this.cantidad ?? 0.0;

  @override
  String toString() {
    return {
      "titular": this.titular,
      "cantidad": cantidadEnCuenta,
    }.toString();
  }

  //metodos especiales
  void ingresar(double cantidad) {
    // if(cantidad < 0 ) return;
    if (cantidad >= 0) {
      this.cantidad = cantidad;
    }
  }

  void retirar(double cantidad) {
    if (cantidadOrZero - cantidad <= 0) {
      this.cantidad = 0.0;
    } else {
      this.cantidad = cantidadOrZero - cantidad;
    }
  }
}
