import 'dart:io';

void main() {
  final Map<String, Map<String, dynamic>> clientes = {};

  while (true) {
    print("\nMenú:");
    print("1. Añadir cliente");
    print("2. Eliminar cliente");
    print("3. Mostrar cliente");
    print("4. Listar todos los clientes");
    print("5. Listar clientes preferentes");
    print("6. Terminar");

    print("Ingrese el número de la opción:");
    final opcion = int.parse(stdin.readLineSync()!);


    switch (opcion) {
      case 1:
        print("\nAñadir cliente:");
        final cliente = agregarCliente();
        clientes[cliente['nif']] = cliente;
        break;
      case 2:
        print("\nEliminar cliente:");
        print("Ingrese el NIF del cliente a eliminar:");
        final nifEliminar = stdin.readLineSync()!;
        if (clientes.containsKey(nifEliminar)) {
          clientes.remove(nifEliminar);
          print("Cliente eliminado correctamente.");
        } else {
          print("El cliente con NIF $nifEliminar no existe.");
        }
        break;
      case 3:
        print("\nMostrar cliente:");
        print("Ingrese el NIF del cliente:");
        final nifMostrar = stdin.readLineSync()!;
        if (clientes.containsKey(nifMostrar)) {
          mostrarCliente(clientes[nifMostrar]!);
        } else {
          print("El cliente con NIF $nifMostrar no existe.");
        }
        break;
      case 4:
        print("\nLista de todos los clientes:");
        clientes.forEach((nif, cliente) {
          print("$nif - ${cliente['nombre']}");
        });
        break;
      case 5:
        print("\nLista de clientes preferentes:");
        clientes.forEach((nif, cliente) {
          if (cliente['preferente']) {
            print("$nif - ${cliente['nombre']}");
          }
        });
        break;
      case 6:
        print("¡Hasta luego!");
        return;
      default:
        print("Opción no válida. Por favor, seleccione una opción válida.");
    }
  }
}

Map<String, dynamic> agregarCliente() {
  final Map<String, dynamic> cliente = {};

  print("NIF:");
  cliente['nif'] = stdin.readLineSync()!;
  print("Nombre:");
  cliente['nombre'] = stdin.readLineSync()!;
  print("Dirección:");
  cliente['direccion'] = stdin.readLineSync()!;
  print("Teléfono:");
  cliente['telefono'] = stdin.readLineSync()!;
  print("Correo electrónico:");
  cliente['correo'] = stdin.readLineSync()!;
  print("¿Es cliente preferente? (true/false):");
  cliente['preferente'] = stdin.readLineSync()!.toLowerCase() == 'true';

  return cliente;
}

void mostrarCliente(Map<String, dynamic> cliente) {
  print("\nDatos del cliente:");
  print("NIF: ${cliente['nif']}");
  print("Nombre: ${cliente['nombre']}");
  print("Dirección: ${cliente['direccion']}");
  print("Teléfono: ${cliente['telefono']}");
  print("Correo electrónico: ${cliente['correo']}");
  print("Cliente preferente: ${cliente['preferente'] ? 'Sí' : 'No'}");
}
