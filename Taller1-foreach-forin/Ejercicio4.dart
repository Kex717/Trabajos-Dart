import 'dart:io';

void main(){
  List<int> numerosGanadores = [];
  int numero;

  for (var i = 0; i < 7; i++) {
    print("Ingrese los numeros ganadores de la loteria");
    numero = int.parse(stdin.readLineSync().toString());
    numerosGanadores.add(numero);
  }

  int cont = 1;
  numerosGanadores.forEach((n) {
    print("El numero ${cont} es ${n}");
    cont++;
  });
  
  numerosGanadores.sort();
  print("Los numeros ordenados son: ${numerosGanadores}");
}