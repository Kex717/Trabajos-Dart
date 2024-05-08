import 'dart:io';

void main (){
  int i = 0;
  int pass = 0;

  print("Digite una contraseña");
  pass = int.parse(stdin.readLineSync().toString());

  while(i <= 0){
    if(pass == 1234){
      print("Bienvenido");
      i = 1;
    }else{
      print("Digite una contraseña");
      pass = int.parse(stdin.readLineSync().toString());
    }
  }
}