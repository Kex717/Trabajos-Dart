import 'dart:io';

class Pelicula {
  String titulo;
  String genero;
  String paisDeProduccion;

  Pelicula(this.titulo, this.genero, this.paisDeProduccion);

  @override
  String toString() {
    return 'Título: $titulo, Género: $genero, País de Producción: $paisDeProduccion';
  }
}

class ServicioStreaming {
  List<Pelicula> peliculas = [];

  void agregarPelicula(Pelicula pelicula) {
    peliculas.add(pelicula);
    print('Película agregada: ${pelicula.titulo}');
  }

  void listarPeliculas() {
    if (peliculas.isEmpty) {
      print('No hay películas disponibles.');
    } else {
      print('Lista de películas:');
      peliculas.asMap().forEach((index, pelicula) {
        print('${index + 1}. $pelicula');
      });
    }
  }

  void actualizarPelicula(int index, Pelicula nuevaPelicula) {
    if (index < 0 || index >= peliculas.length) {
      print('Índice fuera de rango.');
    } else {
      peliculas[index] = nuevaPelicula;
      print('Película actualizada: ${nuevaPelicula.titulo}');
    }
  }

  void eliminarPelicula(int index) {
    if (index < 0 || index >= peliculas.length) {
      print('Índice fuera de rango.');
    } else {
      var pelicula = peliculas.removeAt(index);
      print('Película eliminada: ${pelicula.titulo}');
    }
  }
}

void main() {
  var servicio = ServicioStreaming();
  var exit = false;

  while (!exit) {
    print('\n--- Servicio de Streaming ---');
    print('1. Agregar película');
    print('2. Listar películas');
    print('3. Actualizar película');
    print('4. Eliminar película');
    print('5. Salir');
    print('Selecciona una opción: ');
    var opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        print('Ingrese el título de la película: ');
        var titulo = stdin.readLineSync()!;
        print('Ingrese el género de la película: ');
        var genero = stdin.readLineSync()!;
        print('Ingrese el país de producción: ');
        var pais = stdin.readLineSync()!;
        var pelicula = Pelicula(titulo, genero, pais);
        servicio.agregarPelicula(pelicula);
        break;
      case '2':
        servicio.listarPeliculas();
        break;
      case '3':
        print('Ingrese el número de la película a actualizar: ');
        var index = int.parse(stdin.readLineSync()!) - 1;
        print('Ingrese el nuevo título de la película: ');
        var nuevoTitulo = stdin.readLineSync()!;
        print('Ingrese el nuevo género de la película: ');
        var nuevoGenero = stdin.readLineSync()!;
        print('Ingrese el nuevo país de producción: ');
        var nuevoPais = stdin.readLineSync()!;
        var nuevaPelicula = Pelicula(nuevoTitulo, nuevoGenero, nuevoPais);
        servicio.actualizarPelicula(index, nuevaPelicula);
        break;
      case '4':
        print('Ingrese el número de la película a eliminar: ');
        var indexEliminar = int.parse(stdin.readLineSync()!) - 1;
        servicio.eliminarPelicula(indexEliminar);
        break;
      case '5':
        exit = true;
        print('Saliendo del programa...');
        break;
      default:
        print('Opción no válida. Intente de nuevo.');
        break;
    }
  }
}
