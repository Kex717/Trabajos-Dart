import 'dart:io';

class Empleado {
  String cedula;
  double sueldoBase;
  double pagoPorHoraExtra;
  int horasExtra;
  bool casado;
  int numeroDeHijos;

  Empleado(this.cedula, this.sueldoBase, this.pagoPorHoraExtra, this.horasExtra, this.casado, this.numeroDeHijos);

  double calcularHorasExtra() {
    return horasExtra * pagoPorHoraExtra;
  }

  double calcularSueldoBruto() {
    return sueldoBase + calcularHorasExtra();
  }

  double calcularRetenciones(double porcentajeRetencion) {
    double retencion = porcentajeRetencion;
    if (casado) {
      retencion -= 2.0;
    }
    retencion -= numeroDeHijos * 1.0;
    retencion = retencion < 0 ? 0 : retencion;
    return (calcularSueldoBruto() * retencion) / 100;
  }

  void mostrarInformacionBasica() {
    print('Cedula: $cedula');
    print('Sueldo Base: \$${sueldoBase.toStringAsFixed(2)}');
    print('Casado: ${casado ? 'Sí' : 'No'}');
    print('Número de Hijos: $numeroDeHijos');
  }

  void mostrarInformacionCompleta(double porcentajeRetencion) {
    mostrarInformacionBasica();
    double horasExtraTotal = calcularHorasExtra();
    double sueldoBruto = calcularSueldoBruto();
    double retencion = calcularRetenciones(porcentajeRetencion);
    double sueldoNeto = sueldoBruto - retencion;

    print('Pago por Horas Extra: \$${horasExtraTotal.toStringAsFixed(2)}');
    print('Sueldo Bruto: \$${sueldoBruto.toStringAsFixed(2)}');
    print('Retenciones: \$${retencion.toStringAsFixed(2)}');
    print('Sueldo Neto: \$${sueldoNeto.toStringAsFixed(2)}');
  }
}

void main() {
  
  Empleado empleado = Empleado('1234567890', 2000.0, 15.0, 10, true, 2);

  print('--- Información Básica del Empleado ---');
  empleado.mostrarInformacionBasica();

  print('\n--- Información Completa del Empleado ---');
  empleado.mostrarInformacionCompleta(10.0);
}
