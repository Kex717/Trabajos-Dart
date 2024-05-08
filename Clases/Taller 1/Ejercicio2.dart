class Cafetera{
  double capacidadMaxima;
  double capacidadActual;

  Cafetera(this.capacidadMaxima, this.capacidadActual);

  void capacidad(){
    capacidadMaxima = 1000;
    capacidadActual = 0;
  }

  void servirTaza(double cantidad){
    double taza = 0;
    if (capacidadActual < cantidad) {
      taza = capacidadActual;
      capacidadActual = 0;
      print("No hay suficiente cantidad disponible taza servida con lo restante $taza");
    }else{
      taza = cantidad;
      capacidadActual -= cantidad;
      print("Taza servida $taza");
    }
  }

  void vaciarCafetera(){
    capacidadActual = 0;
    print("Cafetera vaciada con exito");
  }

  void agregarCafe(double cantidad){
    double cantidadLlenar = cantidad + capacidadActual;
    if(cantidadLlenar > capacidadMaxima){
      print("No se puede llenar excede la capacidad");
    }else{
      capacidadActual += cantidad;
      print("Cafetera llenada con exito");
    }
  }

}

void main (){
  final cafecito = new Cafetera(1000, 100);

  cafecito.capacidad();
  cafecito.servirTaza(300);
  cafecito.agregarCafe(1000);
  cafecito.servirTaza(300);
  cafecito.vaciarCafetera();
}