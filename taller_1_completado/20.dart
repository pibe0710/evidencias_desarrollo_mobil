import 'dart:io';

void main() {
  stdout.write('Ingrese un número: ');
  String numeroTexto = stdin.readLineSync()!;
  int cantidad = 0;
  int i = 0;

  while (i < numeroTexto.length) {
    cantidad++;
    i++;
  }

  print('El número tiene $cantidad dígitos.');
}