import 'dart:io';

void main() {
  print('Ingrese el primer número entero: ');
  int numero1 = int.parse(stdin.readLineSync().toString());

  print('Ingrese el segundo número entero: ');
  int numero2 = int.parse(stdin.readLineSync().toString());

  int contador = 0;

  print('Ingrese un número entre $numero1 y $numero2 (o un número fuera del rango para terminar): ');
  int numero = int.parse(stdin.readLineSync().toString());

  while (numero >= numero1 && numero <= numero2) {
    contador++;
    print('Ingrese otro número entre $numero1 y $numero2 (o un número fuera del rango para terminar): ');
    numero = int.parse(stdin.readLineSync().toString());
  }

  print('Cantidad de números escritos entre $numero1 y $numero2: $contador');
}