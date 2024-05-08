import 'dart:io';

void main() {
  final Map<String, double> cestaCompra = {};

  while (true) {
    print("Ingrese el artículo (o escriba 'terminar' para finalizar):");
    final articulo = stdin.readLineSync()!;
    if (articulo.toLowerCase() == 'terminar') {
      break;
    }

    print("Ingrese el precio:");
    final precio = double.parse(stdin.readLineSync()!);

    cestaCompra[articulo] = precio;
  }

  print("\nLista de la compra:");
  double total = 0;
  cestaCompra.forEach((articulo, precio) {
    print("$articulo - \$${precio.toStringAsFixed(2)}");
    total += precio;
  });

  print("\nCoste total: \$${total.toStringAsFixed(2)}");
}
