class Precio {
  double valor;

  Precio(this.valor);
}

class Factura extends Precio {
  String emisor;
  String cliente;

  Factura(double valor, this.emisor, this.cliente) : super(valor);

  void imprimirFactura() {
    print("===== Factura =====");
    print("Emisor: $emisor");
    print("Cliente: $cliente");
    print("Total a pagar: \$${valor.toStringAsFixed(2)}");
    print("===================");
  }
}

void main() {

  var factura = Factura(100.0, "Empresa A", "Cliente B");
  factura.imprimirFactura();
}