void main(){
  var val1 = "hola";
  var val2 = 2;
  print("los valores de val1 es: $val1 y val2 es: $val2");
  cambiarValores(val1, val2);
}

void cambiarValores(var v1, var v2){
  var vaux = v1;
  v1 = v2;
  v2 = vaux;

  print("los valores del val1 es: $v1 y de val2 es: $v2");
}