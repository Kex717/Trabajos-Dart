class Cuenta{
  String numeroCuenta;
  String documento;
  double saldoActual;
  double interesAnual;

  Cuenta(this.numeroCuenta, this.documento, this.saldoActual, this.interesAnual){
    this.numeroCuenta = numeroCuenta;
    this.documento = documento;
    this.saldoActual = saldoActual;
    this.interesAnual = interesAnual;
  }

  void ingresar(double valor){
    saldoActual += valor;
    print("Ingresado con exito su saldo es: $saldoActual");
  }

  void retirar(double valor){
    if (saldoActual >= valor) {
      saldoActual -= valor;
      print("Retiro excitoso, su saldo es: $saldoActual");
    }else{
      print("Retiro denegado, saldo no disponible");
    }
  }

  void mostrar (){
    print("Numero de cuenta: $numeroCuenta");
    print("Numero de documento: $documento");
    print("Saldo Actual: $saldoActual");
    print("El interes anual es de: $interesAnual");
  }
}

void main(){
  final cuentaMia = new Cuenta("1", "1212", 200, 0.02);

  cuentaMia.ingresar(200);
  cuentaMia.retirar(50);
  cuentaMia.mostrar();
}