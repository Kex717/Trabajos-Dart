import 'dart:io';

void main (){
  List vocales = ["a", "e", "i", "o", "u"];
  List vrepetidas = [0,0,0,0,0];
  String palabra = "";

  print("ingrese una palabra");
  palabra = stdin.readLineSync().toString();

  int i = 0;

  vocales.forEach((vocal) {
    for (var j = 0; j <palabra.length ; j++) {
      if(vocal == palabra[j]){  
        vrepetidas[i]++;
      }
      i++;
    }
  });

  for (var i = 0; i < vocales.length; i++) {
    print("Cantidad de ${vocales[i]}: ${vrepetidas[i]}");
  }

}