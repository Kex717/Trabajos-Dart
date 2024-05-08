void main() {
  double poblacionCiudadA = 3.5; // En millones
  double crecimientoAnualA = 15 / 100; // Convertimos el porcentaje a decimal
  double poblacionCiudadB = 5; // En millones
  double crecimientoAnualB = 7 / 100; // Convertimos el porcentaje a decimal
  int anio = 1980;

  while (poblacionCiudadA <= poblacionCiudadB) {
    poblacionCiudadA += poblacionCiudadA * crecimientoAnualA;
    poblacionCiudadB += poblacionCiudadB * crecimientoAnualB;
    anio++;
  }

  print("La población de la ciudad A supera a la de la ciudad B en el año $anio.");
}