import 'dart:io';

void main() {
  // Crear un diccionario de traducción vacío
  final Map<String, String> diccionario = {};
  print("Ingrese las palabras en español e inglés separadas por dos puntos (:) y cada par separado por comas:");
  final entrada = stdin.readLineSync()!;
  final pares = entrada.split(',');

  for (var par in pares) {
    final partes = par.split(':');
    if (partes.length == 2) {
      final palabra = partes[0].trim();
      final traduccion = partes[1].trim();
      diccionario[palabra] = traduccion;
    }
  }

  print("Ingrese una frase en español:");
  final frase = stdin.readLineSync()!;

  final palabras = frase.split(' ');
  final traduccion = palabras.map((palabra) => diccionario[palabra] ?? palabra).join(' ');

  print("La traducción al inglés es: $traduccion");
}
