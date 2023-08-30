class Persona {
  String nombre;
  Persona(this.nombre);
}

class Cuenta {
  Persona titular;
  double cantidad;

 // Constructor
  Cuenta(this.titular, [this.cantidad = 0.0]);


  // Constructor
  Cuenta(Persona titular, [double cantidad = 0.0]) {
    this.titular = titular;
    if (cantidad >= 0) {
      this.cantidad = cantidad;
    } else {
      this.cantidad = 0.0;
    }
  }
  

  // Getter para el titular
  Persona getTitular() {
    return titular;
  }

  // Setter para la cantidad (Ingresar dinero)
  void ingresar(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  // Método para retirar dinero
  void retirar(double cantidad) {
    this.cantidad -= cantidad;
  }

  // Método para mostrar los datos de la cuenta
  void mostrar() {
    print('Titular: ${titular.nombre}');
    print('Saldo actual: \$${cantidad.toStringAsFixed(2)}');
  }
}

void main() {
  // Crear un titular de cuenta
  var titularCuenta = Persona("Juan Pérez");

  // Crear una cuenta con un saldo inicial
  var cuentaBancaria = Cuenta(titularCuenta, 1000.0);

  // Mostrar los datos de la cuenta
  cuentaBancaria.mostrar();

  // Realizar una transacción de ingreso y mostrar el saldo actual
  cuentaBancaria.ingresar(500.0);
  cuentaBancaria.mostrar();

  // Realizar una transacción de retiro y mostrar el saldo actual
  cuentaBancaria.retirar(200.0);
  cuentaBancaria.mostrar();
}