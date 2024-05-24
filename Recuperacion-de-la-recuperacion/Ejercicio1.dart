import "dart:io";

void main (){
  Map <String, Map<String, String>> usuarios = {};

  while (true) {

    print("------------------------");
    print("Elija una opcion:");
    print("1. Guardar usuario");
    print("2. Mostrar Usuarios");
    print("3. Editar Usuario");
    print("4. Eliminar Usuario");
    print("5. Salir");
    print("------------------------\n");

    var opcion = stdin.readLineSync();

    switch (opcion) {
      case "1":
        print("Ingrese la cedula");
        String cedula = stdin.readLineSync()!;
        print("Ingrese el nombre");
        String nombre = stdin.readLineSync()!;

        usuarios[cedula] = {'nombre': nombre};
        print("usuario registrado con exito");
        break;
      case "2":
        usuarios.forEach((cedula, nombre) {
        print("cedula: $cedula: nombre: ${nombre['nombre']}");
        });
        break;
      case "3":
        print("Ingrese la cedula del usuario a editar");
        String cedula = stdin.readLineSync()!;
        if(usuarios.containsKey(cedula)){
          print("ingrese el nombre nuevo");
          String nombre = stdin.readLineSync()!;
          usuarios[cedula]!['nombre'] = nombre;
          print("usuario editado con exito");
        }else{
          print("usuario no encontrado");
        }
        break;
      case "4":
        print("Ingrese la cedula del usuario a eliminar");
        String cedula = stdin.readLineSync()!;
        if(usuarios.containsKey(cedula)){
          usuarios.remove(cedula);
          print("usuario eliminado con exito");
        }else{
          print("usuario no encontrado");
        }
        break;
      case "5":
        print("salio del programa");
        return;
      default:
        print("Ingrese una opcion valida");
    }
  }
}