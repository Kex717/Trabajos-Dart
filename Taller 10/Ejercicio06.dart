void main() {
  int limite = 500;
  int multiplo = 8;

  print("Los múltiplos de $multiplo hasta $limite son:");
  
  int numero = multiplo;
  while (numero <= limite) {
    print(numero);
    numero += multiplo;
  }
}
