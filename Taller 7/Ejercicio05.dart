import 'dart:io';

void main() {
    print('¿Quieres una pizza vegetariana? (si/no)');
    String? respuesta = stdin.readLineSync()!.toLowerCase();

    String tipoPizza = '';
    String ingredienteElegido = '';
    int valorAPagar = 0;

    if (respuesta == 'si') {
        tipoPizza = 'vegetariana';
        print('Por favor, elige un ingrediente adicional:');
        print('1. Pimiento: \$1000');
        print('2. Tofu: \$2000');
        print('3. Champiñones: \$3000');
        String? eleccion = stdin.readLineSync()!;
        if (eleccion == '1') {
        ingredienteElegido = 'Pimiento';
        valorAPagar = 1000;
        } else if (eleccion == '2') {
        ingredienteElegido = 'Tofu';
        valorAPagar = 2000;
        } else if (eleccion == '3') {
        ingredienteElegido = 'Champiñones';
        valorAPagar = 3000;
        }
    } else if(respuesta == 'no') {
        tipoPizza = 'no vegetariana';
        print('Por favor, elige un ingrediente adicional:');
        print('1. Pepperoni: \$2000');
        print('2. Jamón: \$3000');
        print('3. Salmón: \$5000');
        String? eleccion = stdin.readLineSync()!;
        if (eleccion == '1') {
        ingredienteElegido = 'Pepperoni';
        valorAPagar = 2000;
        } else if (eleccion == '2') {
        ingredienteElegido = 'Jamón';
        valorAPagar = 3000;
        } else if (eleccion == '3') {
        ingredienteElegido = 'Salmón';
        valorAPagar = 5000;
        }
    }

    print('Has elegido una pizza $tipoPizza con $ingredienteElegido adicional.');
    print('El valor a pagar es: \$${valorAPagar}');
}
