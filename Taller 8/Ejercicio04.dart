import 'dart:io';

void main() {
  print('Ingrese el nombre de la niñera: ');
  String nombreNinera = stdin.readLineSync()!;
  
  print('Ingrese el tipo de tarifa (basica, premium, gold): ');
  String tipoTarifa = stdin.readLineSync()!;
  
  print('Ingrese la cantidad de horas de servicio: ');
  int horasServicio = int.parse(stdin.readLineSync()!);
  
  int tarifaBase = 0;
  int tarifaExtra = 0;

  if (tipoTarifa == 'basica') {
    tarifaBase = 20000;
    tarifaExtra = 25000;
  } else if (tipoTarifa == 'premium') {
    tarifaBase = 30000;
    tarifaExtra = 40000;
  } else if (tipoTarifa == 'gold') {
    tarifaBase = 50000;
    tarifaExtra = 60000;
  } else {
    print('Tipo de tarifa no válido.');
    return;
  }

  int montoPagar = 0;
  if (horasServicio > 10 && horasServicio <= 15) {
    montoPagar = tarifaBase + (horasServicio - 10) * tarifaExtra;
  } else if (horasServicio > 15 && horasServicio <= 20) {
    montoPagar = tarifaBase + 5 * tarifaExtra + (horasServicio - 15) * tarifaExtra;
  } else if (horasServicio > 20) {
    montoPagar = tarifaBase + 5 * tarifaExtra + 5 * tarifaExtra + (horasServicio - 20) * tarifaExtra;
  } else {
    montoPagar = tarifaBase * horasServicio;
  }

  print('Nombre de la niñera: $nombreNinera');
  print('Monto a pagar: \$${montoPagar.toString()}');
}
