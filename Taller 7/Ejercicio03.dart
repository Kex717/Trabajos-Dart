import 'dart:io';

void main() {
    print('ingresa tu puntuación:');
    int? puntuacion = int.parse(stdin.readLineSync()!);

    String rendimiento;
    int dinero;

    if (puntuacion >= 60) {
        rendimiento = 'Sobresaliente';
        dinero = 200000 * 60;
    } else if (puntuacion >= 40) {
        rendimiento = 'Aceptable';
        dinero = 200000 * 40;
    } else if (puntuacion >= 20) {
        rendimiento = 'Regular';
        dinero = 200000 * 20;
    } else {
        rendimiento = 'Inaceptable';
        dinero = 0;
        print('Tu rendimiento es inaceptable, debes mejorar');
    }

    print('Tu nivel de rendimiento es: $rendimiento');
    print('La cantidad de dinero que recibirás es: \$${dinero}');
}
