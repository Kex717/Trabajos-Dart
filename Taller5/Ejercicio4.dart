import 'dart:io';

void main (){
  int n;
  int i = 1;
  int suma = 0;
  print("Digite un numero");
  n = int.parse(stdin.readLineSync().toString());
  while(i<=n){
    suma = suma + i;
    i++;
  }
  print("La suma es: $suma");
}