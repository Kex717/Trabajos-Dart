import 'dart:io';

void main(){
  var ht;
  var ph;
  var salario;

  print("Escriba las horas trabajadas");
  ht = double.parse(stdin.readLineSync().toString());

  print("Escriba el precio de la hora");
  ph = double.parse(stdin.readLineSync().toString());

  salario = ht * ph;

  print("Su salario es: $salario");
}