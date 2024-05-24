import "dart:io";

void main (){
  Map <String, Map<String, dynamic>> aprendices = {};

  while (true) {

    print("------------------------");
    print("Elija una opcion:");
    print("1. crear aprendiz");
    print("2. consultar nota");
    print("3. mostrar mayor nota");
    print("4. mostrar menor nota");
    print("5. ver promedio");
    print("6. ver Aprendices aprobados");
    print("7. ver Aprendices reprobados");
    print("8. ver aprendices registrados");
    print("9. Salir");
    print("-------------------------\n");

    var opcion = stdin.readLineSync();

    switch (opcion) {
      case "1":
        print("Ingrese el documento");
        String documento = stdin.readLineSync()!;
        print("Ingrese el nombre");
        String nombre = stdin.readLineSync()!;
        print("Ingrese la nota");
        double nota = double.parse(stdin.readLineSync()!);

        aprendices[documento] = {'nombre': nombre, 'nota': nota};

        print("usuario registrado con exito");

        break;

      case "2":
        print("Ingrese el documento para consultar la nota");
        String documento = stdin.readLineSync()!;
        if (aprendices.containsKey(documento)) {
          var aprendiz = aprendices[documento]!;
          print("Documento: $documento, Nombre: ${aprendiz['nombre']}, Nota: ${aprendiz['nota']}");
        } else {
          print("No se encontró un aprendiz con ese documento.");
        }
        break;

        case "3":
          var aprendizConMayorNota = aprendices.entries.reduce((a, b) => a.value['nota'] > b.value['nota'] ? a : b);
          print("Aprendiz con mayor nota: Documento: ${aprendizConMayorNota.key}, Nombre: ${aprendizConMayorNota.value['nombre']}, Nota: ${aprendizConMayorNota.value['nota']}");
          break;

        case "4":
          String documentoMenorNota = '';
          double menorNota = double.infinity;
          String nombreMenorNota = '';

          aprendices.forEach((documento, aprendiz) {
            if (aprendiz['nota'] < menorNota) {
              menorNota = aprendiz['nota'];
              documentoMenorNota = documento;
              nombreMenorNota = aprendiz['nombre'];
            }
          });

          print("Aprendiz con menor nota: Documento: $documentoMenorNota, Nombre: $nombreMenorNota, Nota: $menorNota");
          break;
        case "5":
          double sumNotas = 0;
          aprendices.forEach((documento, aprendiz) {
            sumNotas += aprendiz['nota'];
          });
          double promedio = sumNotas / aprendices.length;
          print("Promedio de notas: $promedio");
          break;
        
        case "6":
          print("Aprendices aprobados:");
          aprendices.forEach((documento, aprendiz) {
            if (aprendiz['nota'] >= 3.0) {
              print("Documento: $documento, Nombre: ${aprendiz['nombre']}, Nota: ${aprendiz['nota']}");
            }
          });
          break;
        case "7":
           print("Aprendices reprobados:");
          aprendices.forEach((documento, aprendiz) {
            if (aprendiz['nota'] < 3.0) {
              print("Documento: $documento, Nombre: ${aprendiz['nombre']}, Nota: ${aprendiz['nota']}");
            }
          });
          break;
      case "8":
        aprendices.forEach((documento, datos) {
        print("documento: $documento: nombre: ${datos['nombre']} nota: ${datos['nota']}");
        });
        break;
      case "9":
        print("Saliste dle programa");
        return;
      default:
        print("Ingrese una opcion valida");
    }
  }
}