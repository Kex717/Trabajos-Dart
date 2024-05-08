import 'dart:io';

void main() {
  print("monto a pagar estacionamiento");

  print("Digite la hora de ingreso en hora militar:");
  int? horaIni = int.parse(stdin.readLineSync()!);

  print("Digite la hora de salida en hora militar:");
  int? horaFin = int.parse(stdin.readLineSync()!);

  int duracionTotalMinutos = ((horaFin - horaIni) / 100 * 60).round();
  int horasTotales = duracionTotalMinutos ~/ 60;

  if (duracionTotalMinutos % 60 > 0) {
    horasTotales++;
  }

  int montoPagar;
  if (horasTotales == 1) {
    montoPagar = 1000;
  } else {
    montoPagar = 1000 + (horasTotales - 1) * 600;
  }
   print('El monto a pagar por ${horasTotales} horas de estacionamiento es: \$${montoPagar}');
}
