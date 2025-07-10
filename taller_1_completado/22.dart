import 'dart:io';

void main() {
  List<int> vector = List.filled(10, 0);

  for (int i = 0; i < vector.length; i++) {
    stdout.write('Ingrese el valor para la posición $i: ');
    int valor = int.parse(stdin.readLineSync()!);
    vector[i] = valor;
  }

  for (int i = 0; i < vector.length; i++) {
    print('Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}');
  }
}