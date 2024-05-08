import 'dart:io';

void main() {
  List<String> asignaturas = [
    'Matemáticas',
    'Física',
    'Química',
    'Historia',
    'Lengua'
  ];
  List<String> materiasPerdidas = [];

  asignaturas.forEach((a) { 
    print("Ingresa la nota para ${a}: ");
    double nota = double.parse(stdin.readLineSync()!);

    if (nota < 3.0) {
      materiasPerdidas.add(a);
    }
  });

  materiasPerdidas.forEach((m) => print("Materia a repetir: ${m}"));

}
