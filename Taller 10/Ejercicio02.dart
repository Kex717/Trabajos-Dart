import 'dart:io';

void main() {
  int notasAltas = 0;
  int notasBajas = 0;

  print("Ingrese la cantidad de notas de alumnos a procesar: ");
  int n = int.parse(stdin.readLineSync()!);

  int contador = 0;
  while (contador < n) {
    print("Ingrese la nota del alumno ${contador + 1}: ");
    double nota = double.parse(stdin.readLineSync()!);

    if (nota >= 7) {
      notasAltas++;
    } else {
      notasBajas++;
    }

    contador++;
  }

  print("Cantidad de alumnos con notas mayores o iguales a 7: $notasAltas");
  print("Cantidad de alumnos con notas menores a 7: $notasBajas");
}
