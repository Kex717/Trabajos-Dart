import 'dart:io';

void main() {
  String usuario = "admin"; // Usuario correcto
  String contrasena = "12345"; // Contraseña correcta
  
  int intentos = 3;
  
  while (intentos > 0) {
    stdout.write("Ingrese su usuario: ");
    String usuarioIngresado = stdin.readLineSync()!;
    stdout.write("Ingrese su contraseña: ");
    String contrasenaIngresada = stdin.readLineSync()!;
    
    if (usuarioIngresado == usuario && contrasenaIngresada == contrasena) {
      print("Bienvenido, $usuario!");
      break;
    } else {
      print("Usuario o contraseña incorrectos. Inténtalo de nuevo.");
      intentos--;
    }
  }
  
  if (intentos == 0) {
    print("Se han agotado los intentos. Inténtalo más tarde.");
  }
}