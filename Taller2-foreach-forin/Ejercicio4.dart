import 'dart:io';

void main() {
  final Map<int, String> meses = {
    1: 'enero', 2: 'febrero', 3: 'marzo', 4: 'abril', 5: 'mayo', 6: 'junio',
    7: 'julio', 8: 'agosto', 9: 'septiembre', 10: 'octubre', 11: 'noviembre', 12: 'diciembre'
  };


  print("Ingrese una fecha en formato dd/mm/aaaa:");
  final fecha = stdin.readLineSync()!;


  final partes = fecha.split('/');
  final dia = int.parse(partes[0]);
  final mes = int.parse(partes[1]);
  final anno = int.parse(partes[2]);


  if (meses.containsKey(mes)) {
    final nombreMes = meses[mes];
    print("La fecha en formato dd de $nombreMes de $anno es $dia de $nombreMes de $anno");
  } else {
    print("El mes ingresado no es válido.");
  }
}