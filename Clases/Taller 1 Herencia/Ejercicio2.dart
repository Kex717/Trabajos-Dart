class Producto {
  DateTime fechaCaducidad;
  String numeroLote;
  Producto(this.fechaCaducidad, this.numeroLote);
}

class ProductoFresco extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;

  ProductoFresco(DateTime fechaCaducidad, String numeroLote, this.fechaEnvasado, this.paisOrigen)
      : super(fechaCaducidad, numeroLote);
}

class ProductoRefrigerado extends Producto {
  String codigoSupervision;
  DateTime fechaEnvasado;
  double temperaturaMantenimiento;
  String paisOrigen;

  ProductoRefrigerado(DateTime fechaCaducidad, String numeroLote, this.codigoSupervision, this.fechaEnvasado, this.temperaturaMantenimiento, this.paisOrigen)
      : super(fechaCaducidad, numeroLote);
}

class ProductoCongelado extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;
  double temperaturaMantenimiento;

  ProductoCongelado(DateTime fechaCaducidad, String numeroLote, this.fechaEnvasado, this.paisOrigen, this.temperaturaMantenimiento)
      : super(fechaCaducidad, numeroLote);
}

class CongeladoPorAire extends ProductoCongelado {
  double porcentajeNitrogeno;
  double porcentajeOxigeno;
  double porcentajeDioxidoCarbono;
  double porcentajeVaporAgua;

  CongeladoPorAire(DateTime fechaCaducidad, String numeroLote, DateTime fechaEnvasado, String paisOrigen, double temperaturaMantenimiento, this.porcentajeNitrogeno, this.porcentajeOxigeno, this.porcentajeDioxidoCarbono, this.porcentajeVaporAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}

class CongeladoPorAgua extends ProductoCongelado {
  double salinidadAgua;

  CongeladoPorAgua(DateTime fechaCaducidad, String numeroLote, DateTime fechaEnvasado, String paisOrigen, double temperaturaMantenimiento, this.salinidadAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}

class CongeladoPorNitrogeno extends ProductoCongelado {
  String metodoCongelacion;
  int tiempoExposicionNitrogeno;

  CongeladoPorNitrogeno(DateTime fechaCaducidad, String numeroLote, DateTime fechaEnvasado, String paisOrigen, double temperaturaMantenimiento, this.metodoCongelacion, this.tiempoExposicionNitrogeno)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaMantenimiento);
}

void main() {
  
  var productoFresco = ProductoFresco(DateTime(2024, 5, 8), "12345", DateTime(2024, 5, 1), "España");
  var productoRefrigerado = ProductoRefrigerado(DateTime(2024, 5, 8), "54321", "XYZ123", DateTime(2024, 5, 1), 4.0, "Francia");
  var productoCongeladoAire = CongeladoPorAire(DateTime(2024, 5, 8), "98765", DateTime(2024, 5, 1), "Italia", -18.0, 70.0, 20.0, 5.0, 5.0);
  var productoCongeladoAgua = CongeladoPorAgua(DateTime(2024, 5, 8), "67890", DateTime(2024, 5, 1), "Alemania", -18.0, 15.0);
  var productoCongeladoNitrogeno = CongeladoPorNitrogeno(DateTime(2024, 5, 8), "13579", DateTime(2024, 5, 1), "Portugal", -18.0, "Método X", 30);

  print("Producto Fresco:");
  print("Fecha Caducidad: ${productoFresco.fechaCaducidad}");
  print("Número de Lote: ${productoFresco.numeroLote}");
  print("Fecha Envasado: ${productoFresco.fechaEnvasado}");
  print("País Origen: ${productoFresco.paisOrigen}");

  print("\nProducto Refrigerado:");
  print("Fecha Caducidad: ${productoRefrigerado.fechaCaducidad}");
  print("Número de Lote: ${productoRefrigerado.numeroLote}");
  print("Código de Supervisión: ${productoRefrigerado.codigoSupervision}");
  print("Fecha Envasado: ${productoRefrigerado.fechaEnvasado}");
  print("Temperatura Mantenimiento: ${productoRefrigerado.temperaturaMantenimiento}");
  print("País Origen: ${productoRefrigerado.paisOrigen}");

  print("\nProducto Congelado por Aire:");
  print("Fecha Caducidad: ${productoCongeladoAire.fechaCaducidad}");
  print("Número de Lote: ${productoCongeladoAire.numeroLote}");
  print("Fecha Envasado: ${productoCongeladoAire.fechaEnvasado}");
  print("País Origen: ${productoCongeladoAire.paisOrigen}");
  print("Temperatura Mantenimiento: ${productoCongeladoAire.temperaturaMantenimiento}");
  print("Porcentaje Nitrógeno: ${productoCongeladoAire.porcentajeNitrogeno}");
  print("Porcentaje Oxígeno: ${productoCongeladoAire.porcentajeOxigeno}");
  print("Porcentaje Dióxido de Carbono: ${productoCongeladoAire.porcentajeDioxidoCarbono}");
  print("Porcentaje Vapor de Agua: ${productoCongeladoAire.porcentajeVaporAgua}");

  print("\nProducto Congelado por Agua:");
  print("Fecha Caducidad: ${productoCongeladoAgua.fechaCaducidad}");
  print("Número de Lote: ${productoCongeladoAgua.numeroLote}");
  print("Fecha Envasado: ${productoCongeladoAgua.fechaEnvasado}");
  print("País Origen: ${productoCongeladoAgua.paisOrigen}");
  print("Temperatura Mantenimiento: ${productoCongeladoAgua.temperaturaMantenimiento}");
  print("Salinidad Agua: ${productoCongeladoAgua.salinidadAgua}");

  print("\nProducto Congelado por Nitrógeno:");
  print("Fecha Caducidad: ${productoCongeladoNitrogeno.fechaCaducidad}");
  print("Número de Lote: ${productoCongeladoNitrogeno.numeroLote}");
  print("Fecha Envasado: ${productoCongeladoNitrogeno.fechaEnvasado}");
  print("País Origen: ${productoCongeladoNitrogeno.paisOrigen}");
  print("Temperatura Mantenimiento: ${productoCongeladoNitrogeno.temperaturaMantenimiento}");
  print("Método Congelación: ${productoCongeladoNitrogeno.metodoCongelacion}");
  print("Tiempo Exposición Nitrógeno: ${productoCongeladoNitrogeno.tiempoExposicionNitrogeno}");
}
