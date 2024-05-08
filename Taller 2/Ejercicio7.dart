import 'dart:io';

void main(){
  var vp;
  var dr;
  var nde;
  var vt;
  var vnde;

  print("Escriba el valor de pasaje por cada kilometro recorrido");
  vp = double.parse(stdin.readLineSync().toString());

  print("Escriba la distancia recorrida en kilometros");
  dr = double.parse(stdin.readLineSync().toString());

  print("Escriba el numero de dias de estancia");
  nde = double.parse(stdin.readLineSync().toString());

  print("Escriba el valor de un dia de estancia");
  vnde = double.parse(stdin.readLineSync().toString());

  vt = (vp * dr) + (nde * vnde);

  print("El valor total del pasaje es: $vt");
}