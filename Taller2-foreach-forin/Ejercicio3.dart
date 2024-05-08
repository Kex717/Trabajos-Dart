import 'dart:io';

void main() {
  final Map<String, double> precios = {'manzana': 2.5, 'banana': 1.8, 'naranja': 1.0};
  print("Ingrese una fruta:");
  final fruta = stdin.readLineSync();
  print("Ingrese la cantidad en kilos:");
  final cantidad = double.parse(stdin.readLineSync()!);
  if (precios.containsKey(fruta)) {
    final precioTotal = precios[fruta]! * cantidad;
    print("El precio de $cantidad kilos de $fruta es $precioTotal");
  } else {
    print("La fruta no está en el diccionario.");
  }
}