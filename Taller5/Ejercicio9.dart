import 'dart:io';

void main() {
  stdout.write("Ingrese el capital inicial: ");
  double capitalInicial = double.parse(stdin.readLineSync()!);
  
  double capitalActual = capitalInicial;
  int meses = 0;

  while (capitalActual < capitalInicial * 2) {
    capitalActual *= 1.05; // Incremento mensual del 5%
    meses++;
  }

  print("El capital se duplica en $meses meses.");
}