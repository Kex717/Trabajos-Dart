import 'dart:io';

void main(){
  var hp;
  var t;

  print("Escriba la cantidad de horas de estadia");
  hp = int.parse(stdin.readLineSync().toString());

  if(hp >= 2){
    t = (hp - 1) * 800 + 1000;
  }else{
    t = 1000;
  }

  print("El total a pagar es: $t");
}