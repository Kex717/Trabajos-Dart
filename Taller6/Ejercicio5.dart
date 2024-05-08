void main() {
  double horasTrabajadas = 45; // Ejemplo: horas trabajadas
  double valorPorHora = 10; // Ejemplo: valor por hora
  
  double salario = 0;
  
  if (horasTrabajadas <= 40) {
    salario = horasTrabajadas * valorPorHora;
  } else {
    double horasNormales = 40 * valorPorHora;
    double horasExtras = (horasTrabajadas - 40) * (valorPorHora * 1.5);
    salario = horasNormales + horasExtras;
  }
  
  print("El salario del trabajador es: \$${salario.toStringAsFixed(2)}");
}