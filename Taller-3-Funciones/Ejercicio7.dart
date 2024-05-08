import 'dart:io';
void main() {
  print("Ingrese una cadena de caracteres:");
  String cadena = stdin.readLineSync()!;

  Map<String, int> recuento = contarVocales(cadena);

  recuento.forEach((vocal, apariciones) {
    print("La vocal '$vocal' aparece $apariciones veces.");
  });
}

Map<String, int> contarVocales(String cadena) {
  Map<String, int> recuentoVocales = {'a': 0, 'e': 0, 'i': 0, 'o': 0, 'u': 0};

  for (int i = 0; i < cadena.length; i++) {
    String caracter = cadena[i].toLowerCase();

    if (recuentoVocales.containsKey(caracter)) {
      recuentoVocales[caracter] = recuentoVocales[caracter]! + 1;
    }
  }
  return recuentoVocales;
}
