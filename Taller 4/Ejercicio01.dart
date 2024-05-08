import 'dart:io';

void main() {
  print("Nomina Empresarial");

  print("Ingrese el numero de trabajadores:");
  int? numTrabajadores = int.parse(stdin.readLineSync()!);

  print("Ingrese el numero de horas trabajadas:");
  int? numHoras = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor por horaa trabajada:");
  int? valorHora = int.parse(stdin.readLineSync()!);

  if (numTrabajadores < 50) {
    int valorPagar = numHoras * valorHora;
    int nomina = valorPagar * numTrabajadores;

    print("El valor de la nomina es de: " + nomina.toString());
  } else if (numTrabajadores >= 50) {
    int valorPagar = numHoras * valorHora;
    int nomina = valorPagar * numTrabajadores;
    double subTransporte = (nomina * 20) / 100;
    double nominaSub = nomina + subTransporte;

    print("El valor de la nomina con subsidio de transporte es de: " + nominaSub.toString());
    print("valor subsidio: "+subTransporte.toString());
  }
}
