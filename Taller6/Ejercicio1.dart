void main() {
  int cantidadHombres = 50; 
  int cantidadMujeres = 30; 
  
  int totalPersonas = cantidadHombres + cantidadMujeres;
  
  double porcentajeHombres = (cantidadHombres / totalPersonas) * 100;
  double porcentajeMujeres = (cantidadMujeres / totalPersonas) * 100;
  
  if (porcentajeHombres > porcentajeMujeres) {
    print("Mayor cantidad de hombres: $porcentajeHombres%");
  } else {
    print("Mayor cantidad de mujeres: $porcentajeMujeres%");
  }
}