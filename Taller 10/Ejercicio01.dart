import 'dart:io';

void main() {
  int piezasAptas = 0;

  print("Ingrese la cantidad de piezas a procesar:");
  int n = int.parse(stdin.readLineSync()!);

  int contador = 0;
  while (contador < n) {
    print("Ingrese la longitud de la pieza ${contador + 1}:");
    double longitud = double.parse(stdin.readLineSync()!);

    if (longitud >= 1.20 && longitud <= 1.30) {
      piezasAptas++;
    }

    contador++;
  }

  print("La cantidad de piezas aptas en el lote es: $piezasAptas");
}