void main() {
  stdout.write('Ingrese la cantidad de posiciones del vector: ');
  int cantidad = int.parse(stdin.readLineSync()!);

  List<int> vector = List.filled(cantidad, 0);

  for (int i = 0; i < cantidad; i++) {
    stdout.write('Ingrese el valor para la posición $i: ');
    int valor = int.parse(stdin.readLineSync()!);
    vector[i] = valor;
  }

  stdout.write('Escriba "asc" para orden ascendente o "desc" para descendente: ');
  String orden = stdin.readLineSync()!.toLowerCase();

  for (int i = 0; i < vector.length - 1; i++) {
    for (int j = 0; j < vector.length - i - 1; j++) {
      if (orden == 'asc' && vector[j] > vector[j + 1]) {
        int temp = vector[j];
        vector[j] = vector[j + 1];
        vector[j + 1] = temp;
      } else if (orden == 'desc' && vector[j] < vector[j + 1]) {
        int temp = vector[j];
        vector[j] = vector[j + 1];
        vector[j + 1] = temp;
      }
    }
  }

  print('Vector ordenado: $vector');
}