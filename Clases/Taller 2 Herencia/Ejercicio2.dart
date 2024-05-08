class Empleado {
  String nombre;
  int edad;
  String departamento;

  Empleado(this.nombre, this.edad, this.departamento);

  void mostrarInformacion() {
    print("Nombre: $nombre");
    print("Edad: $edad");
    print("Departamento: $departamento");
  }
}

class Programador extends Empleado {
  List<String> lenguajes;

  Programador(String nombre, int edad, String departamento, this.lenguajes)
      : super(nombre, edad, departamento);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print("Lenguajes: $lenguajes");
  }
}

void main() {

  var empleado = Empleado("Juan", 30, "Desarrollo");

  var programador = Programador("María", 25, "Desarrollo", ["Java", "Python"]);

  print("Información del Empleado:");
  empleado.mostrarInformacion();

  print("\nInformación del Programador:");
  programador.mostrarInformacion();
}
