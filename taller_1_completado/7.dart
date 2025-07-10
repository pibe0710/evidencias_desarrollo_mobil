import 'dart:io';

void main(){
      print('\nMenú de colores:');
  print('1. Amarillo');
  print('2. Azul');
  print('3. Rojo');

  stdout.write('Digite el primer número del color: ');
  int color1 = int.parse(stdin.readLineSync()!);
  stdout.write('Digite el segundo número del color: ');
  int color2 = int.parse(stdin.readLineSync()!);

  String combinacion = '';

  if ((color1 == 1 && color2 == 2) || (color1 == 2 && color2 == 1)) {
    combinacion = 'verde';
  } else if ((color1 == 1 && color2 == 3) || (color1 == 3 && color2 == 1)) {
    combinacion = 'naranja';
  } else if ((color1 == 2 && color2 == 3) || (color1 == 3 && color2 == 2)) {
    combinacion = 'morado';
  } else if (color1 == color2 && (color1 == 1 || color1 == 2 || color1 == 3)) {
    combinacion = 'color único';
  } else {
    combinacion = 'combinación no válida';
  }

  print('Su combinación es: $combinacion');
}