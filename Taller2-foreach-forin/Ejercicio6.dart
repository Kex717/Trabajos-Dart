import 'dart:io';

void main() {
  final Map<String, dynamic> persona = {};

  print("Ingrese la información de la persona:");
  
  print("Nombre:");
  persona['nombre'] = stdin.readLineSync();

  print("Edad:");
  persona['edad'] = int.parse(stdin.readLineSync()!);

  print("Sexo:");
  persona['sexo'] = stdin.readLineSync();

  print("Teléfono:");
  persona['teléfono'] = stdin.readLineSync();

  print("Correo electrónico:");
  persona['correo electrónico'] = stdin.readLineSync();

  print("Contenido del diccionario:");
  persona.forEach((key, value) {
    print("$key: $value");
  });
}
