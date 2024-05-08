class Empleado {
  int horasTrabajadas;

  Empleado(this.horasTrabajadas);

  bool trabajoSobreTiempo(int horasRegulares) {
    return horasTrabajadas > horasRegulares;
  }

  int calcularMinutosExtras(int horasRegulares) {
    if (trabajoSobreTiempo(horasRegulares)) {
      return (horasTrabajadas - horasRegulares) * 60;
    } else {
      return 0;
    }
  }
}

class PagoEmpleado extends Empleado {
  double pagoPorHora;

  PagoEmpleado(int horasTrabajadas, this.pagoPorHora) : super(horasTrabajadas);

  double calcularPagoHorasExtras(int horasRegulares) {
    if (trabajoSobreTiempo(horasRegulares)) {
      return (horasTrabajadas - horasRegulares) * pagoPorHora;
    } else {
      return 0.0;
    }
  }
}

void main() {
  var empleado = PagoEmpleado(45, 10.0);

  int horasRegulares = 40;

  if (empleado.trabajoSobreTiempo(horasRegulares)) {

    int minutosExtras = empleado.calcularMinutosExtras(horasRegulares);
    print("El empleado trabajó $minutosExtras minutos extras.");

    double pagoHorasExtras = empleado.calcularPagoHorasExtras(horasRegulares);
    print("Debe pagarse al empleado un total de \$$pagoHorasExtras por las horas extras.");
  } else {
    print("El empleado no trabajó horas extras.");
  }
}
