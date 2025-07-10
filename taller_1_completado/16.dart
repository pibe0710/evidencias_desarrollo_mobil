import 'dart:io';

void main() {
  stdout.write('Ingrese la cantidad de números de la serie Fibonacci que desea ver: ');
  int cantidad = int.parse(stdin.readLineSync()!);

  List<int> fibonacci = [];

  for (int i = 0; i < cantidad; i++) {
    if (i == 0) {
      fibonacci.add(0);
    } else if (i == 1) {
      fibonacci.add(1);
    } else {
      fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
    }
  }

  print('Serie Fibonacci con $cantidad elementos:');
  print(fibonacci.join(', '));
}