import 'dart:io';

void main(){
  List<String> asignaturas = ["Matematicas", "Fisica", "Quimica", "Historia", "Lengua"];
  List<double> notas = [];

  asignaturas.forEach((x){
    print("Ingrese la nota de ${x}");
    double nota = double.parse(stdin.readLineSync().toString());
    notas.add(nota);
  });

  for (var i = 0; i < asignaturas.length; i++) {
    print("En ${asignaturas[i]} haz sacado ${notas[i]} ");
  }
}