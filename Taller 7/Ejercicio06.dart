import 'dart:io';

void main(){

    print("Candidatos: "); 
    print("Candidato A partido rojo"); 
    print("Candidato B partido verde "); 
    print("Candidato C partido azul"); 
    print("ingrese el candidato por el que quiere votar (ingrese solo la letra) "); 

    String? candidato = stdin.readLineSync().toString();

    switch(candidato){
        case 'A':
        print('Usted ha votado por el partido rojo');
        break;

        case 'B':
        print('Usted ha votado por el partido verde');
        break;

        case 'C':
        print('Usted ha votado por el partido azul');
        break;

        default:
        print('Opcion erronea');
        break;
    }
}