import 'dart:io';

void main() {
  final Map<String, dynamic> usuario = {};
  print("Ingrese su nombre:");
  usuario['nombre'] = stdin.readLineSync();
  print("Ingrese su edad:");
  usuario['edad'] = int.parse(stdin.readLineSync()!);
  print("Ingrese su dirección:");
  usuario['direccion'] = stdin.readLineSync();
  print("Ingrese su número de teléfono:");
  usuario['telefono'] = stdin.readLineSync();
  print("${usuario['nombre']} tiene ${usuario['edad']} años, vive en ${usuario['direccion']} y su número de teléfono es ${usuario['telefono']}");
}