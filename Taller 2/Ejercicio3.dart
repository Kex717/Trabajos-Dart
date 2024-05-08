import 'dart:io';

void main(){
  int  n1;
  int  n2;
  var suma;
  var resta;
  var multiplicacion;

  print("Escriba un numero entero");
  n1 = int.parse(stdin.readLineSync().toString());

  print("Escriba otro numero entero");
  n2 = int.parse(stdin.readLineSync().toString());

  suma = n1 + n2;
  resta = n1 - n2;
  multiplicacion = n1 * n2;

  print("La suma es: $suma, la resta es: $resta y la multiplicacion es: $multiplicacion");
}