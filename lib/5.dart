class Persona {
  String _nombre;
  int _edad;
  String _dni;

  // Constructor
  Persona(this._nombre, this._edad, this._dni);

  // Getter para el nombre
  String get nombre {
    return _nombre;
  }

  // Setter para el nombre
  set nombre(String nuevoNombre) {
    _nombre = nuevoNombre;
  }

  // Getter para la edad
  int get edad {
    return _edad;
  }

  // Setter para la edad
  set edad(int nuevaEdad) {
    _edad = nuevaEdad;
  }

  // Getter para el DNI
  String get dni {
    return _dni;
  }

  // Setter para el DNI
  set dni(String nuevoDNI) {
    _dni = nuevoDNI;
  }

  // Método para mostrar los datos de la persona
  void mostrar() {
    print("Nombre: $_nombre");
    print("Edad: $_edad años");
    print("DNI: $_dni");
  }

  // Método para verificar si la persona es mayor de edad
  bool esMayorDeEdad() {
    return _edad >= 18;
  }
}

void main() {
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona("Juan", 25, "12345678A");

  // Mostrar los datos de la persona
  persona1.mostrar();

  // Verificar si la persona es mayor de edad
  if (persona1.esMayorDeEdad()) {
    print("${persona1.nombre} es mayor de edad.");
  } else {
    print("${persona1.nombre} no es mayor de edad.");
  }
}