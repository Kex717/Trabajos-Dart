import 'dart:io';

void main() {
  List<int> numeros = [];

  for (int i = 0; i < 3; i++) {
    stdout.write("Ingrese el número ${i + 1}: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  numeros.sort();
  print("Números ordenados de menor a mayor: $numeros");
}