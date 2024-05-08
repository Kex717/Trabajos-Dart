import 'dart:io';

void main() {
  int numero1 =
      1; // Inicializar numero1 con un valor distinto de 0 para comenzar el bucle

  while (numero1 != 0) {
    print('Ingrese el primer número: ');
    numero1 = int.parse(stdin.readLineSync().toString());

    print('Ingrese el segundo número: ');
    int numero2 = int.parse(stdin.readLineSync().toString());

    if (numero1 != 0 || numero2 != 0) {
      int suma = numero1 + numero2;
      print('La suma de $numero1 y $numero2 es: $suma');
    }
  }

  print('Ambos números son 0. Saliendo del programa.');
}
