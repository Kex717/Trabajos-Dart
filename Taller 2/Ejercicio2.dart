import 'dart:io';

void main(){
  var precioCompra;
  var porDesc;
  var precioFinal;

  print("Escriba el precio de compra");
  precioCompra = double.parse(stdin.readLineSync().toString());

  print("Escriba el descuento");
  porDesc = double.parse(stdin.readLineSync().toString());

  precioFinal = precioCompra - (precioCompra * porDesc / 100);

  print("El precio final del articulo es: $precioFinal");
}