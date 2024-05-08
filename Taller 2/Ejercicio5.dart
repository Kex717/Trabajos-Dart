import 'dart:io';

void main(){
  var c1;
  var c2;
  var h;

  print("Escriba el valor del primer cateto");
  c1 = double.parse(stdin.readLineSync().toString());

  print("Escriba el valor del segundo cateto");
  c2 = double.parse(stdin.readLineSync().toString());

  h = (c1*c1) + (c2*c2);

  print("La hipotenusa es: $h");
}