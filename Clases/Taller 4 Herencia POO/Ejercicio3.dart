class Libro {
  String titulo;
  String autor;
  String categoria;
  String tipo;

  Libro(this.titulo, this.autor, this.categoria, this.tipo);

  @override
  String toString() {
    return 'Título: $titulo, Autor: $autor, Categoría: $categoria, Tipo: $tipo';
  }
}

class ListaDeLibros {
  List<Libro> libros = [];

  int obtenerNumeroDeLibros() {
    return libros.length;
  }

  void insertarLibro(Libro libro) {
    libros.add(libro);
    libros.sort((a, b) => a.titulo.toLowerCase().compareTo(b.titulo.toLowerCase()));
    print('Libro insertado: ${libro.titulo}');
  }

  void eliminarLibro(int posicion) {
    if (posicion < 0 || posicion >= libros.length) {
      print('Posición fuera de rango.');
    } else {
      var libro = libros.removeAt(posicion);
      print('Libro eliminado: ${libro.titulo}');
    }
  }

  Libro? obtenerLibro(int posicion) {
    if (posicion < 0 || posicion >= libros.length) {
      print('Posición fuera de rango.');
      return null;
    } else {
      return libros[posicion];
    }
  }

  int buscarLibro(String parteTitulo) {
    parteTitulo = parteTitulo.toLowerCase();
    for (int i = 0; i < libros.length; i++) {
      if (libros[i].titulo.toLowerCase().contains(parteTitulo)) {
        return i;
      }
    }
    return -1; // No encontrado
  }

  void listarLibros() {
    if (libros.isEmpty) {
      print('No hay libros disponibles.');
    } else {
      print('Lista de libros:');
      for (var i = 0; i < libros.length; i++) {
        print('${i + 1}. ${libros[i]}');
      }
    }
  }
}

void main() {
  var listaDeLibros = ListaDeLibros();

  listaDeLibros.insertarLibro(Libro('El Alquimista', 'Paulo Coelho', 'Espiritualidad', 'Novela'));
  listaDeLibros.insertarLibro(Libro('Cien Años de Soledad', 'Gabriel García Márquez', 'Novelas', 'Realista'));
  listaDeLibros.insertarLibro(Libro('La Sombra del Viento', 'Carlos Ruiz Zafón', 'Novelas', 'Histórica'));

  print('--- Número de Libros ---');
  print('Número de libros en la lista: ${listaDeLibros.obtenerNumeroDeLibros()}');

  print('\n--- Lista de Libros ---');
  listaDeLibros.listarLibros();

  print('\n--- Buscar Libro ---');
  String parteTitulo = 'sombra';
  int posicion = listaDeLibros.buscarLibro(parteTitulo);
  if (posicion != -1) {
    print('El libro que contiene "$parteTitulo" está en la posición: ${posicion + 1}');
  } else {
    print('No se encontró ningún libro que contenga "$parteTitulo" en su título.');
  }

  print('\n--- Obtener Libro en Posición 2 ---');
  var libro = listaDeLibros.obtenerLibro(1);
  if (libro != null) {
    print('Libro en la posición 2: $libro');
  }

  print('\n--- Eliminar Libro en Posición 1 ---');
  listaDeLibros.eliminarLibro(0);

  print('\n--- Lista de Libros Actualizada ---');
  listaDeLibros.listarLibros();
}