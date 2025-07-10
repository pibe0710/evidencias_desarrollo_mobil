import 'dart:io';

void main() {
  List<int> numeros = [];

  int contador = 1;
  while (contador <= 3) {
    stdout.write('Ingrese el número $contador: ');
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
    contador++;
  }

  stdout.write('Ingrese "asc" para orden ascendente o "desc" para descendente: ');
  String orden = stdin.readLineSync()!.toLowerCase();

  int i = 0;
  while (i < numeros.length - 1) {
    int j = 0;
    while (j < numeros.length - i - 1) {
      bool condicion = orden == 'asc' ? numeros[j] > numeros[j + 1] : numeros[j] < numeros[j + 1];
      if (condicion) {
        int temp = numeros[j];
        numeros[j] = numeros[j + 1];
        numeros[j + 1] = temp;
      }
      j++;
    }
    i++;
  }

  print('Números ordenados: $numeros');
}