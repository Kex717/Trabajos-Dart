import 'dart:io';

void main(){

    print('ingrese su edad');
    int? edad = int.parse(stdin.readLineSync()!);

    double precio=0; 

    if(edad<4){
        precio = 0; 
    }else if(edad >= 4 && edad <=18){
        precio = 5000; 
    }else{
        precio = 10000; 
    }

    print('el valor de su entrada es: ${precio}');
}