import 'dart:io';

void main() {
  print("numeros impares entre dos numeros: ");

  print("Ingrese el primer numero");
  int? x = int.parse(stdin.readLineSync()!);

  print("Ingrese el segundo numero");
  int? y = int.parse(stdin.readLineSync()!);

  print('Los números impares entre $x y $y son:');
  mostrarImparesEntre(x, y);
}

void mostrarImparesEntre(int x, int y) {
  if (x > y) {
    int temp = x;
    x = y;
    y = temp;
  }
  
  for (int i = x; i <= y; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}
