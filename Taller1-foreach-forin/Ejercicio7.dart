void main(){
  List<String> abecedario = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z"];
  
  for (var i = 0; i < abecedario.length; i++) {
    if (i %2 == 0 && i > 0) {
      abecedario.remove(abecedario[i]);
    }
  }

  abecedario.forEach((l)=> print(l));
}
