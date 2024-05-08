import 'dart:io';
  void main (){
  int n;
  int n2;
  int i = 0;
  int suma = 0;

  print("Digite un numero");
  n = int.parse(stdin.readLineSync().toString());

  print("Digite otro numero");
  n2 = int.parse(stdin.readLineSync().toString());

  suma = n + n2;

  print("La suma es: $suma");

  while(i <= 0){
    if(n == 0 && n2 == 0){
      i = 1;
    }else{
      print("Digite un numero");
      n = int.parse(stdin.readLineSync().toString());

      print("Digite otro numero");
      n2 = int.parse(stdin.readLineSync().toString());
      suma = n + n2;

      print("La suma es: $suma");
    }
  }
}
