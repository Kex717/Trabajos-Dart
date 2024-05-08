import 'dart:io';

void main() {
  double suma = 0;

  print("Ingrese la cantidad de números: ");
  int? cantidad = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidad; i++) {
    print("Ingrese el número ${i + 1}: ");
    double numero = double.parse(stdin.readLineSync()!);
    suma += numero;
  }

  double promedio = suma / cantidad;
  print("El promedio de los $cantidad números es: $promedio");
}
