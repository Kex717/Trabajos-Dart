class Multimedia {
  String titulo;
  String autor;
  String formato;
  double duracion;


  Multimedia(this.titulo, this.autor, this.formato, this.duracion);

  String getTitulo() {
    return titulo;
  }

  String getAutor() {
    return autor;
  }

  String getFormato() {
    return formato;
  }

  double getDuracion() {
    return duracion;
  }

  @override
  String toString() {
    return "Título: $titulo\nAutor: $autor\nFormato: $formato\nDuración: $duracion minutos";
  }

  bool equals(Multimedia otroMultimedia) {
    return this.titulo == otroMultimedia.titulo && this.autor == otroMultimedia.autor;
  }
}

class Pelicula extends Multimedia {
  Pelicula(String titulo, String autor, String formato, double duracion)
      : super(titulo, autor, formato, duracion);
}

class DiscoMusical extends Multimedia {
  DiscoMusical(String titulo, String autor, String formato, double duracion)
      : super(titulo, autor, formato, duracion);
}

void main() {

  var pelicula1 = Pelicula("Pelicula A", "Director X", "avi", 120.5);
  var pelicula2 = Pelicula("Pelicula A", "Director X", "avi", 120.5);
  var pelicula3 = Pelicula("Pelicula B", "Director Y", "mp4", 90.0);

  
  print("Pelicula 1:");
  print(pelicula1);

  print("\nPelicula 2:");
  print(pelicula2);

  print("\nPelicula 3:");
  print(pelicula3);

  print("\n¿Pelicula 1 es igual a Pelicula 2?");
  print(pelicula1.equals(pelicula2)); 

  print("\n¿Pelicula 1 es igual a Pelicula 3?");
  print(pelicula1.equals(pelicula3)); 

  var disco1 = DiscoMusical("Álbum X", "Artista A", "CD Audio", 45.0);
  var disco2 = DiscoMusical("Álbum X", "Artista A", "CD Audio", 45.0);
  var disco3 = DiscoMusical("Álbum Y", "Artista B", "MP3", 60.0);

  print("\nDisco 1:");
  print(disco1);

  print("\nDisco 2:");
  print(disco2);

  print("\nDisco 3:");
  print(disco3);

  print("\n¿Disco 1 es igual a Disco 2?");
  print(disco1.equals(disco2)); 

  print("\n¿Disco 1 es igual a Disco 3?");
  print(disco1.equals(disco3)); 
}
