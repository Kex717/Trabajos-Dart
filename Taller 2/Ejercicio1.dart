import 'dart:io';

void main (){
  var millas;
  var metros;

  print("Escriba la distancia en millas");

  millas = int.parse(stdin.readLineSync().toString());
  metros = millas * 1852;

  print("La distancia en metros es: $metros");

}