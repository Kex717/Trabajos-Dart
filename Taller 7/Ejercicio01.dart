import 'dart:io';

void main(){
    
    print('Ingrese su edad');
    int? edad = int.parse(stdin.readLineSync()!);

    print('Ingrese su salario');
    double? salario = double.parse(stdin.readLineSync()!);

    double salarioMinimo = 1000000; 
    double rentaMes = 0;
    double rentaAnual;

    if(edad>30 && edad<50){
        if(salario > salarioMinimo*2){
            rentaMes = salario*0.20;
            rentaAnual= rentaMes *12; 
            print('Debe pagar de renta $rentaMes al mes y $rentaAnual al año');
        }else{
            print('No debe pagar renta');
        }
    }
    if(edad>50){
        if(salario > salarioMinimo){
            rentaMes = salario*0.10;
            rentaAnual= rentaMes *12; 
            print('Debe pagar de renta $rentaMes al mes y $rentaAnual al año');
        }else{
            print('No debe pagar renta');
        }
    }
    print('No debe pagar rents');
}