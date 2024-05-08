import 'dart:math';
import 'dart:io';

void main() {
  print("Seleccione una operación:");
  print("1. Multiplicación");
  print("2. Suma");
  print("3. Resta");
  print("4. División");
  print("5. Potencia");
  print("6. Raíz");

  String opcion = stdin.readLineSync()!;

  switch (opcion) {
    case '1':
      multiplicacion();
      break;
    case '2':
      suma();
      break;
    case '3':
      resta();
      break;
    case '4':
      division();
      break;
    case '5':
      potencia();
      break;
    case '6':
      raiz();
      break;
    default:
      print("Opción no válida.");
  }
}

void multiplicacion() {
  print("Ingrese el primer número:");
  double numero1 = double.parse(stdin.readLineSync() ?? '0');
  print("Ingrese el segundo número:");
  double numero2 = double.parse(stdin.readLineSync() ?? '0');

  double resultado = numero1 * numero2;
  print("El resultado de la multiplicación es: $resultado");
}

void suma() {
  print("Ingrese el primer número:");
  double numero1 = double.parse(stdin.readLineSync() ?? '0');
  print("Ingrese el segundo número:");
  double numero2 = double.parse(stdin.readLineSync() ?? '0');

  double resultado = numero1 + numero2;
  print("El resultado de la suma es: $resultado");
}

void resta() {
  print("Ingrese el primer número:");
  double numero1 = double.parse(stdin.readLineSync() ?? '0');
  print("Ingrese el segundo número:");
  double numero2 = double.parse(stdin.readLineSync() ?? '0');

  double resultado = numero1 - numero2;
  print("El resultado de la resta es: $resultado");
}

void division() {
  print("Ingrese el dividendo:");
  double dividendo = double.parse(stdin.readLineSync() ?? '0');
  print("Ingrese el divisor:");
  double divisor = double.parse(stdin.readLineSync() ?? '0');

  if (divisor != 0) {
    double resultado = dividendo / divisor;
    print("El resultado de la división es: $resultado");
  } else {
    print("No se puede dividir por cero.");
  }
}

void potencia() {
  print("Ingrese la base:");
  double base = double.parse(stdin.readLineSync() ?? '0');
  print("Ingrese el exponente:");
  double exponente = double.parse(stdin.readLineSync() ?? '0');

  num resultado = pow(base, exponente);
  print("El resultado de la potencia es: $resultado");
}

void raiz() {
  print("Ingrese el número:");
  double numero = double.parse(stdin.readLineSync() ?? '0');

  if (numero >= 0) {
    double resultado = sqrt(numero);
    print("La raíz cuadrada es: $resultado");
  } else {
    print("No se puede calcular la raíz cuadrada de un número negativo.");
  }
}
