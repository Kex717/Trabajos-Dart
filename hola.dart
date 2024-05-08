import 'dart:io';

void main(){
// Map<int, String> persona = {
//   1: 'carlos',
//   2: 'pepe',
//   3: 'Esteban'
// };
//   print(persona);

//   persona.addAll({4: 'david'});
//   print(persona);

// print("Sumando dos numeros");
// print("Escriba el primer numero");

// double numero1 = double.parse(stdin.readLineSync().toString());

// print("Escriba el segundo numero");

// double numero2 = double.parse(stdin.readLineSync().toString());

// print("La suma de $numero1 mas $numero2 es:");
// print(numero1+numero2);

var year;

print("Escriba el año");

year = int.parse(stdin.readLineSync().toString());

if (year >= 2001){
  print('21st century');
}else if (year >= 1901){
  print('20th century');
}
}