class Moto {
  String marca;
  String color;

  Moto(this.marca, this.color){
    this.marca = marca;
    this.color = color;
  }

  void caracteristicas(){
    print("La marca es $marca");
    print("El color es $color");
  }
}

void main (){
  final mt09 = new Moto("yamaha", "negra");

  mt09.caracteristicas();

  final z1000 = new Moto("Kawasaki", "Verde");

  z1000.caracteristicas();
}