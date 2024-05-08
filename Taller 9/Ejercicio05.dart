import 'dart:io';

void main() {
  print('Ingrese el valor de n para generar la serie de Fibonacci: ');
  int? n = int.parse(stdin.readLineSync()!);
  
  int a = 0;
  int b = 1;
  
  print('Serie de Fibonacci hasta $n:');
  
  // Manejar el caso especial cuando n es 1 o 2
  if (n >= 1) {
    print(a);
  }
  if (n >= 2) {
    print(b);
  }
  
  //ya estan las dos primeras posiciones de la sucesion
  int contador = 2;

  while (contador < n) {
    int siguiente = a + b;
    print(siguiente);
    
    a = b;
    b = siguiente;
    
    contador++;
  }
}