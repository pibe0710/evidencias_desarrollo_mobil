import 'dart:io';

void main() {
  stdout.write('Ingrese un número entre 0 y 12 para calcular su factorial: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero > 12) {
    print('Factorial de $numero es infinito (supera el límite permitido).');
  } else {
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print('El factorial de $numero es: $factorial');
  }
}