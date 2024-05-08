import 'dart:io';
void main() {
 
  int numero = 0;
  int posicion = 0;

  print("Digite un numero");
  numero = int.parse(stdin.readLineSync()!);

  print("Digite una posicion");
  posicion = int.parse(stdin.readLineSync()!);

  int digito = obtenerDigito(numero, posicion);
  if (digito != -1) {
    print("El dígito en la posición $posicion del número $numero es: $digito");
  } else {
    print("La posición especificada está fuera del rango.");
  }
}

int obtenerDigito(int numero, int posicion) {
  String numeroString = numero.toString();

  if (posicion >= 1 && posicion <= numeroString.length) {
    int indice = posicion - 1;
    int digito = int.parse(numeroString[indice]);
    return digito;
  }else{
    return -1;
  }
}

