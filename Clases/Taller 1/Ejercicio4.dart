class Persona {
  String nombre;
  String apellido;

  Persona(this.nombre, this.apellido);
}

class Fecha {
  int dia;
  int mes;
  int anio;

  Fecha(this.dia, this.mes, this.anio);
}

class Libro {
  String titulo;
  Persona autor;
  String isbn;
  int paginas;
  int edicion;
  String editorial;
  String lugar;
  Fecha fechaEdicion;

  Libro(this.titulo, this.autor, this.isbn, this.paginas, this.edicion,this.editorial, this.lugar, this.fechaEdicion);

  void leerInformacion() {
    print("Título: $titulo");
    print("Autor: ${autor.nombre} ${autor.apellido}");
    print("ISBN: $isbn");
    print("Páginas: $paginas");
    print("Edición: $edicion");
    print("Editorial: $editorial");
    print("Lugar: $lugar");
    print("Fecha de edición: ${fechaEdicion.dia}/${fechaEdicion.mes}/${fechaEdicion.anio}");
  }

  void mostrarInformacion() {
    print("Información del libro:");
    leerInformacion();
  }
}

void main() {
  var autor = Persona("John", "Doe");

  var fechaEdicion = Fecha(10, 5, 2023);

  var libro = Libro("Mi Libro", autor, "978-3-16-148410-0", 200, 1, "Editorial Sena", "Colombia, pereira", fechaEdicion);

  libro.mostrarInformacion();
}
