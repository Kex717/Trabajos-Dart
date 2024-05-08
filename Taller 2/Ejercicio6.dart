import 'dart:io';

void main(){
  var p;
  var np;
  var g;

  print("Escriba el valor del pasaje");
  p = double.parse(stdin.readLineSync().toString());

  print("Escriba la cantidad de pasajeros");
  np = double.parse(stdin.readLineSync().toString());

  g = p * np;

  print("La ganancia es: $g");
}