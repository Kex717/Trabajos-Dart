import 'dart:io';

void main() {
  String password;

  print('Ingrese la contraseña: ');
  password = stdin.readLineSync().toString();

  while (password != "1234") {
    print('Contraseña incorrecta. Inténtelo de nuevo: ');
    password = stdin.readLineSync().toString();
  }

  print('Bienvenido');
}
