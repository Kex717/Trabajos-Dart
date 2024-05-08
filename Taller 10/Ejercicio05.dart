import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];

  print("Ingrese los 15 valores para la lista 1:");
  for (int i = 0; i < 15; i++) {
    print("Valor ${i + 1}: ");
    int? valor = int.parse(stdin.readLineSync()!);
    lista1.add(valor);
  }

  print("\nIngrese los 15 valores para la lista 2:");
  for (int i = 0; i < 15; i++) {
    print("Valor ${i + 1}: ");
    int? valor = int.parse(stdin.readLineSync()!);
    lista2.add(valor);
  }

  int sumaLista1 = lista1.reduce((value, element) => value + element);
  int sumaLista2 = lista2.reduce((value, element) => value + element);

  if (sumaLista1 > sumaLista2) {
    print("\nLista 1 mayor");
  } else if (sumaLista2 > sumaLista1) {
    print("\nLista 2 mayor");
  } else {
    print("\nListas iguales");
  }
}
