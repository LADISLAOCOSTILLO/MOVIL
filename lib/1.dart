class Cuenta {
  String titular;
  double cantidad;

  // Constructor
  Cuenta(this.titular, [this.cantidad = 0.0]);

  // Método para ingresar dinero en la cuenta
  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
      print('Se han ingresado \$${cantidad.toStringAsFixed(2)} a la cuenta de $titular.');
    } else {
      print('El monto a ingresar debe ser positivo.');
    }
  }

  // Método para retirar dinero de la cuenta
  void retirar(double cantidad) {
    if (cantidad > 0) {
      if (this.cantidad - cantidad >= 0) {
        this.cantidad -= cantidad;
        print('Se han retirado \$${cantidad.toStringAsFixed(2)} de la cuenta de $titular.');
      } else {
        print('No tienes suficiente saldo para retirar \$${cantidad.toStringAsFixed(2)}.');
        this.cantidad = 0.0; // Establecer el saldo a 0.
      }
    } else {
      print('El monto a retirar debe ser positivo.');
    }
  }

  // Método para mostrar el saldo actual de la cuenta
  void mostrarSaldo() {
    print('Saldo actual de la cuenta de $titular: \$${cantidad.toStringAsFixed(2)}');
  }
}

void main() {
  // Crear una cuenta con titular y cantidad inicial
  var cuenta1 = Cuenta("LADISLAO", 1000.0);

  cuenta1.mostrarSaldo(); // Mostrar el saldo inicial
  cuenta1.ingresar(1000.0); // Ingresar dinero
  cuenta1.mostrarSaldo(); // Mostrar el saldo después del ingreso
  cuenta1.retirar(2500.0); // Retirar dinero
  cuenta1.mostrarSaldo(); // Mostrar el saldo después del retiro
  cuenta1.retirar(2000.0); // Intentar retirar más dinero del disponible
  cuenta1.mostrarSaldo(); // Mostrar el saldo después del intento de retiro
}