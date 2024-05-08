import 'dart:math';
import 'dart:io';

void main() {
  // Generar dos números aleatorios entre 0 y 100
  Random random = Random();
  int numero1 = random.nextInt(101);
  int numero2 = random.nextInt(101);

  int sumaCorrecta = numero1 + numero2;
  print(sumaCorrecta);

  int respuestaUsuario;

  print('Por favor, calcule la suma de $numero1 y $numero2: ');
  respuestaUsuario = int.parse(stdin.readLineSync().toString());

  while (respuestaUsuario != sumaCorrecta) {
    print('Respuesta incorrecta. Intenta de nuevo.');
    print('Por favor, calcule la suma de $numero1 y $numero2: ');
    respuestaUsuario = int.parse(stdin.readLineSync().toString());
  }

  print('¡Correcto! La suma de $numero1 y $numero2 es $sumaCorrecta.');
}
