void main() {
  final Map<String, int> asignaturas = {
    'Matemáticas': 6,
    'Física': 4,
    'Química': 5
  };


  asignaturas.forEach((asignatura, creditos) {
    print("$asignatura tiene $creditos créditos");
  });

  final totalCreditos = asignaturas.values.reduce((value, element) => value + element);
  print("El número total de créditos del curso es: $totalCreditos");
}