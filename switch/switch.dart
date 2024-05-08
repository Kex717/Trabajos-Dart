import 'dart:io';
void main(){
  print("Ingrese su sabor preferido");
  String sabor = stdin.readLineSync().toString();
  switch (sabor){
    case "vainilla":
    print("su helado sera de vainilla");
    break;
    case "chocolate":
    print("su helado sera de chocolate");
    break;
    case "naranja":
    print("su helado sera de naranja");
    break;
    case "coco":
    print("su helado sera de coco");
    break;
    default:
    print("No tenemos su sabor preferido");
  }
}