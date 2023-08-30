class CuentaJoven extends Persona {
  double _cantidad;
  double _bonificacion;

  // Constructor
  CuentaJoven(String nombre, int edad, String dni, double cantidad, double bonificacion)
      : _cantidad = cantidad,
        _bonificacion = bonificacion,
        super(nombre, edad, dni);

  // Getter para la cantidad
  double get cantidad {
    return _cantidad;
  }

  // Setter para la cantidad
  set cantidad(double nuevaCantidad) {
    _cantidad = nuevaCantidad;
  }

  // Getter para la bonificación
  double get bonificacion {
    return _bonificacion;
  }

  // Setter para la bonificación
  set bonificacion(double nuevaBonificacion) {
    _bonificacion = nuevaBonificacion;
  }

  // Método para verificar si el titular es válido (mayor de edad y menor de 25)
  bool esTitularValido() {
    return edad >= 18 && edad < 25;
  }

  // Método para retirar dinero de la cuenta si el titular es válido
  void retirarDinero(double cantidadARetirar) {
    if (esTitularValido() && cantidadARetirar <= _cantidad) {
      _cantidad -= cantidadARetirar;
      print("Retirada de dinero exitosa.");
    } else {
      print("No se puede retirar dinero. Titular no válido o saldo insuficiente.");
    }
  }

  // Método para mostrar información de la cuenta joven
  void mostrar() {
    print("Cuenta Joven");
    print("Titular: $nombre");
    print("Edad: $edad años");
    print("DNI: $dni");
    print("Saldo: $_cantidad");
    print("Bonificación: $_bonificacion%");
  }
}

void main() {
  // Crear una instancia de la clase CuentaJoven
  CuentaJoven cuenta = CuentaJoven("Ana", 20, "12345678B", 1000.0, 5.0);

  // Mostrar información de la cuenta
  cuenta.mostrar();

  // Intentar retirar dinero
  cuenta.retirarDinero(500.0);
  cuenta.retirarDinero(800.0);
}