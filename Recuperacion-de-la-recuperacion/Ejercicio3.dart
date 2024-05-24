import 'dart:io';

void main(){
  List <int> numeros = [];
  for (var i = 0; i < 5; i++) {
    print("ingrese un numero ganador de la loteria");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  print(numeros);

  numeros.sort();
  final numerosOrganizados;
  numerosOrganizados = numeros.reversed;
  print(numerosOrganizados);
}