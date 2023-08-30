class Cuenta {
  String nombre="LADISLAO";
  String dni="31044491";
  double cantidad=20;

  // Constructor con parámetros
  Cuenta.conParametros(this.nombre, this.dni, this.cantidad);

  // Getter para el nombre
  String getNombre() {
    return nombre;
  }

  // Setter para el nombre
  void setNombre(String nuevoNombre) {
    nombre = nuevoNombre;
  }

  // Getter para el DNI
  String getDni() {
    return dni;
  }

  // Setter para el DNI
  void setDni(String nuevoDni) {
    dni = nuevoDni;
  }

  // Getter para la cantidad
  double getCantidad() {
    return cantidad;
  }

  // Setter para la cantidad (Ingreso)
  void ingreso(double cantidad) {
    if (cantidad > 0) {
      this.cantidad += cantidad;
    }
  }

  // Método para realizar un reintegro (retiro)
  void reintegro(double cantidad) {
    if (cantidad > 0 && cantidad <= this.cantidad) {
      this.cantidad -= cantidad;
    }
  }

  // Método para realizar una transferencia
  void transferencia(Cuenta cuentaDestino, double cantidad) {
    if (cantidad > 0 && cantidad <= this.cantidad) {
      this.cantidad -= cantidad;
      cuentaDestino.ingreso(cantidad);
    }
  }
}

void main() {
  // Crear dos cuentas
  var cuenta1 = Cuenta.conParametros("Juan Pérez", "12345678A", 1000.0);
  var cuenta2 = Cuenta.conParametros("María Gómez", "87654321B", 500.0);

  // Realizar operaciones
  cuenta1.transferencia(cuenta2, 200.0);

  // Mostrar saldos
  print("Saldo de ${cuenta1.getNombre()}: \$${cuenta1.getCantidad().toStringAsFixed(2)}");
  print("Saldo de ${cuenta2.getNombre()}: \$${cuenta2.getCantidad().toStringAsFixed(2)}");
  print (cuenta1);
}