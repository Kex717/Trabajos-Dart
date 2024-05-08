import 'dart:io';

void main() {
  stdout.write('Ingrese la cantidad de docenas del producto a comprar: ');
  int cantidadDocenas = int.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el precio por unidad');
  double precioUnidad = double.parse(stdin.readLineSync()!);
   
  int cantidadPorDocena = 12; 
  double montoCompra = cantidadDocenas * cantidadPorDocena * precioUnidad;
  
  double descuento = 0.0; 
  double montoDescuento = 0.0; 
  
  if (cantidadDocenas > 3) {
    descuento = 0.15;
    montoDescuento = montoCompra * descuento;
  } 
  else {
    descuento = 0.10;
    montoDescuento = montoCompra * descuento;
  }
  
  double montoAPagar = montoCompra - montoDescuento; 
  
  int unidadesObsequio = 0;
  
  if (cantidadDocenas > 3) {
    unidadesObsequio = cantidadDocenas - 3;
  }
  
  print('Monto de la compra: \$${montoCompra.toStringAsFixed(2)}');
  print('Monto del descuento: \$${montoDescuento.toStringAsFixed(2)}');
  print('Monto a pagar: \$${montoAPagar.toStringAsFixed(2)}');
  print('Número de unidades de obsequio: ${unidadesObsequio}');
}
