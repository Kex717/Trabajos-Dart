import 'dart:math';
import 'dart:io';

void main(){
  Random random = new Random();
  int naz = random.nextInt(101);
  int naz2 = random.nextInt(101);
  int suma = 0;
  int sumaUsu = 0;
  int i = 0;

  print("naz = $naz naz2 = $naz2");
  suma = naz + naz2;
  print(suma);

  do {
    print("digite el resultado de la suma");
    sumaUsu = int.parse(stdin.readLineSync().toString());
    if (sumaUsu == suma) {
      print("la suma es correcta");
      i = 1;
    }
  } while (i <= 0);  
}