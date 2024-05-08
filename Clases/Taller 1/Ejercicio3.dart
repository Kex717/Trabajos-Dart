class Cancion{
  String titulo;
  String autor;

  Cancion(this.titulo, this.autor);

  void dameTitulo(){
    print("el titulo de la cancion es: $titulo");
  }

  void dameAutor(){
    print("El autor de la cancion es: $autor");
  }

  void ponTitulo(String nuevo){
    titulo = nuevo;
    print("Titulo establecido con exito");
  }

  ponAutor(String nuevo){
    autor = nuevo;
    print("Autor establecido con exito");
  }
}

void main(){
  final miCancion = new Cancion("La cucaracha", "El cucarachero");
  miCancion.dameTitulo();
  miCancion.dameAutor();
  miCancion.ponTitulo("El perro");
  miCancion.ponAutor("Argemiro");
  miCancion.dameTitulo();
  miCancion.dameAutor();
}