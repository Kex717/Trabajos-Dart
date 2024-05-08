import 'dart:io';
void main() {
  int n = 0;
  int m = 0;

  print("Digite un numero");
  n = int.parse(stdin.readLineSync()!);

  print("Digite otro numero");
  m = int.parse(stdin.readLineSync()!);

  calcularCubos(n, m);
}

void calcularCubos(int n, int m) {
  for (int i = n; i <= m; i++) {
    int cubo = i * i * i;
    print("$i el cubo es $cubo");
  }
}