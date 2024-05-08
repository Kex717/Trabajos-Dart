void main(){
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  List<int> numeros2 = numeros.reversed.toList();

  numeros2.forEach((n) => print(n));

  print(numeros2);
}