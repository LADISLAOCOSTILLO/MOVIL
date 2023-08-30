class Persona {
  String nombre;
  int edad;
  String dni;
  String sexo;
  double peso;
  double altura;

  // Constantes para el cálculo del IMC
  static const int PESO_BAJO = -1;
  static const int PESO_NORMAL = 0;
  static const int SOBREPESO = 1;

  // Constructor por defecto
  Persona() {
    nombre = "";
    edad = 0;
    dni = "";
    sexo = "H";
    peso = 0.0;
    altura = 0.0;
  }

  // Constructor con nombre, edad y sexo; el resto por defecto
  Persona.nombreEdadSexo(this.nombre, this.edad, this.sexo) {
    dni = "";
    peso = 0.0;
    altura = 0.0;
  }

  // Constructor con todos los atributos como parámetros
  Persona.todosLosAtributos(
    this.nombre,
    this.edad,
    this.dni,
    this.sexo,
    this.peso,
    this.altura,
  );

  // Método para calcular el IMC
  int calcularIMC() {
    double imc = peso / (altura * altura);
    if (imc < 20) {
      return PESO_BAJO;
    } else if (imc >= 20 && imc <= 25) {
      return PESO_NORMAL;
    } else {
      return SOBREPESO;
    }
  }

  // Método para comprobar si es mayor de edad
  bool esMayorDeEdad() {
    return edad >= 18;
  }

  // Método privado para comprobar el sexo
  void _comprobarSexo(String sexo) {
    if (sexo == "H" || sexo == "M") {
      this.sexo = sexo;
    } else {
      this.sexo = "H"; // Si el sexo es incorrecto, se establece como "H" (Hombre) por defecto.
    }
  }
}

void main() {
  // Ejemplo de uso de la clase Persona
  var persona1 = Persona.todosLosAtributos(
    "Juan Pérez",
    25,
    "12345678A",
    "H",
    70.5,
    1.75,
  );

  print("Nombre: ${persona1.nombre}");
  print("Edad: ${persona1.edad}");
  print("DNI: ${persona1.dni}");
  print("Sexo: ${persona1.sexo}");
  print("Peso: ${persona1.peso}");
  print("Altura: ${persona1.altura}");

  int imcResult = persona1.calcularIMC();
  if (imcResult == Persona.PESO_BAJO) {
    print("IMC: Bajo peso.");
  } else if (imcResult == Persona.PESO_NORMAL) {
    print("IMC: Peso normal.");
  } else {
    print("IMC: Sobrepeso.");
  }

  if (persona1.esMayorDeEdad()) {
    print("Es mayor de edad.");
  } else {
    print("No es mayor de edad.");
  }
}
