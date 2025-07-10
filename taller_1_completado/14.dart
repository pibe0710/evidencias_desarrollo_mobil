import 'dart:io';

void main() {
  stdout.write('Ingrese un número para ver su tabla de multiplicar (1 al 10): ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 1 && numero <= 10) {
    print('\nTabla de multiplicar del $numero:');
    for (int i = 1; i <= 10; i++) {
      print('$numero x $i = ${numero * i}');
    }
  } else {
    print('Número fuera del rango permitido.');
  }
}
