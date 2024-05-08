import 'dart:io';

void main() {
  Map<String, String> divisas = {'Euro': '€', 'Dollar': '\$', 'Yen': '¥'};
  print("Ingrese una divisa:");
  final divisa = stdin.readLineSync();
  if (divisas.containsKey(divisa)) {
    print("El símbolo de la divisa $divisa es ${divisas[divisa]}");
  } else {
    print("La divisa no está en el diccionario.");
  }
}