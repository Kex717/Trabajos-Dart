import 'dart:io';
  void main (){
  int n;
  int n2;
  int i = 1;
  int suma = 0;

  print("Digite un numero");
  n = int.parse(stdin.readLineSync().toString());

  print("Digite otro numero");
  n2 = int.parse(stdin.readLineSync().toString());

  i = n;

  while(i <= n2){
    suma = suma + i;
    i++;
  }
  print("La suma es: $suma");
}
