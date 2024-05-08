import 'dart:io';

void main() {
  print('Ingrese la longitud del lado 1: ');
  double lado1 = double.parse(stdin.readLineSync()!);
  
  print('Ingrese la longitud del lado 2: ');
  double lado2 = double.parse(stdin.readLineSync()!);
  
  print('Ingrese la longitud del lado 3: ');
  double lado3 = double.parse(stdin.readLineSync()!);
  
  if (lado1 == lado2 && lado2 == lado3) {
    print('El triángulo es equilátero.');
  } 
  else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print('El triángulo es isósceles.');
  } 
  else {
    print('El triángulo es escaleno.');
  }
}
