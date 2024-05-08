import 'dart:io';
void main(){
  print("Ingrese un numero");
  int n = int.parse(stdin.readLineSync().toString());
  int suma = sumaImpares(n);
  print("la suma de los numeros impares es: $suma");
}

int sumaImpares(int nFinal){
  int suma = 0;
  int cont = 1;
  int i = 0;
  while(cont <= nFinal){
    if (i %2 != 0) {
      suma = suma + i;
      cont++;
    }
    i++;
  }
  return suma;
}