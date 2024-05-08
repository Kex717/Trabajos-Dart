void main() {
  String mes = "marzo"; // Ejemplo: mes de la compra
  double totalCompra = 100.0; // Ejemplo: total de la compra
  
  double descuento = 0.0;
  
  if (mes == "enero" || mes == "febrero" || mes == "marzo") {
    descuento = 0.15;
  } else if (mes == "abril" || mes == "mayo" || mes == "junio") {
    descuento = 0.20;
  }
  
  double totalPagar = totalCompra - (totalCompra * descuento);
  
  print("Cantidad a cobrar al cliente: \$${totalPagar.toStringAsFixed(2)}");
}