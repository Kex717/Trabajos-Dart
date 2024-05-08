
void main() {
  caracteristicas(5); 
}

void caracteristicas(int numero) {
  if (numero > 0) {
    print("$numero es positivo");
  } else if (numero < 0) {
    print("$numero es negativo");
  } else {
    print("$numero es cero");
  }

  if (numero % 2 == 0) {
    print("$numero es par");
  } else {
    print("$numero es impar");
  }
}