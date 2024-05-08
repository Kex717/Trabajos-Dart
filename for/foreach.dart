void main(){
  // List<int> numeros = [1,2,3,4,5,6,7,8,9];

  // // numeros.forEach((x){
  // //   print("accediendo al elemento $x");
  // // });

  // numeros.forEach((x) => print("Accediendo al elemento $x"));

  // Map<String, double> mapa = {
  //   'base': 1.84,
  //   'altura': 1.95,
  //   'area': 2.10,
  //   'volumen': 1.90
  // };
  // mapa.values.forEach((valor)=> print("valor del mapa: $valor"));

  // mapa.keys.forEach((llave)=> print("la clave $llave"));

  // mapa.forEach((llave, valor) => print("la clave $llave tiene el valor $valor"));

  // print(mapa);

  // Map<int,String> mapa = {1: "pedro", 2: "pablo", 3: "luis", 4: "carlos"};

  // mapa.values.forEach((x)=> print("valor mapa: $x"));

  // mapa.keys.forEach((y)=> print("la clave $y"));

  // mapa.forEach((y, x) => print("la clave $y tiene valor $x"));

  Set conjunto;
  conjunto = Set.from(["angel", "luis", "ana", "maria"]);
  conjunto.forEach((x)=> print("el elemento del conjunto: $x"));
}