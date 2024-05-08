import 'dart:io';

void main() {
  int sueldos100a300 = 0;
  int sueldosMas300 = 0;
  int gastoTotal = 0;

  print("Ingrese la cantidad de empleados: ");
  int? n = int.parse(stdin.readLineSync()!);

  int contador = 0;
  while (contador < n) {
    print("Ingrese el sueldo del empleado ${contador + 1}: ");
    int? sueldo = int.parse(stdin.readLineSync()!);

    if (sueldo >= 100 && sueldo <= 300) {
      sueldos100a300++;
    } else if (sueldo > 300) {
      sueldosMas300++;
    }

    gastoTotal += sueldo;
    contador++;
  }

  print("Empleados que cobran entre 100 y 300: $sueldos100a300");
  print("Empleados que cobran más de 300: $sueldosMas300");
  print("Gasto total en sueldos: \$$gastoTotal");
}
