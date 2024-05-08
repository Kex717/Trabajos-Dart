import 'dart:io';

void main() {
  print('Ingrese la distancia del recorrido en kilómetros: ');
  int distanciaRecorrida = int.parse(stdin.readLineSync()!);
  
  double montoFijo = 300000.0;
  double montoAdicional1 = 15000.0; 
  double montoAdicional2 = 10000.0; 
  
  double iva = 0.20; 
  
  double montoSinIVA = 0.0; 
  double montoIVA = 0.0; 
  double montoTotal = 0.0; 
  
  if (distanciaRecorrida <= 300) {
    montoSinIVA = montoFijo;
  } 
  else if (distanciaRecorrida <= 1000) {
    montoSinIVA = montoFijo + (distanciaRecorrida - 300) * montoAdicional1;
  } 
  else {
    montoSinIVA = montoFijo + 700 * montoAdicional1 + (distanciaRecorrida - 1000) * montoAdicional2;
  }
  
  montoIVA = montoSinIVA * iva;
  
  montoTotal = montoSinIVA + montoIVA;
  
  print('Monto a pagar (sin IVA): \$${montoSinIVA.toStringAsFixed(2)}');
  print('Impuesto al valor agregado (IVA): \$${montoIVA.toStringAsFixed(2)}');
  print('Monto total a pagar (con IVA): \$${montoTotal.toStringAsFixed(2)}');
}
