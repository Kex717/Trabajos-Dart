import 'dart:io';

void main() {
  final Map<int, double> facturas = {};

 
  double cantidadCobrada = 0;
  double cantidadPendiente = 0;

  while (true) {
    print("\nOpciones:");
    print("1. Añadir nueva factura");
    print("2. Pagar factura existente");
    print("3. Terminar");

    print("Ingrese el número de la opción:");
    final opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("\nAñadir nueva factura:");
        print("Número de factura:");
        final numeroFactura = int.parse(stdin.readLineSync()!);
        print("Coste de la factura:");
        final costeFactura = double.parse(stdin.readLineSync()!);

        facturas[numeroFactura] = costeFactura;
        cantidadPendiente += costeFactura;
        break;
      case 2:
        print("\nPagar factura existente:");
        print("Número de factura a pagar:");
        final facturaPagar = int.parse(stdin.readLineSync()!);

        if (facturas.containsKey(facturaPagar)) {
          final costeFactura = facturas.remove(facturaPagar)!;
          cantidadCobrada += costeFactura;
          cantidadPendiente -= costeFactura;
          print("La factura número $facturaPagar ha sido pagada.");
        } else {
          print("La factura número $facturaPagar no existe.");
        }
        break;
      case 3:
        print("\nCantidad cobrada hasta el momento: \$${cantidadCobrada.toStringAsFixed(2)}");
        print("Cantidad pendiente de cobro: \$${cantidadPendiente.toStringAsFixed(2)}");
        print("¡Hasta luego!");
        return;
      default:
        print("Opción no válida. Por favor, seleccione una opción válida.");
    }
  }
}