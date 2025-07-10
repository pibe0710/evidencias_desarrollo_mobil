import 'dart:io';

void main(){
      stdout.write('\nIngrese el número A: ');
  int a3 = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el número B: ');
  int b3 = int.parse(stdin.readLineSync()!);
  int producto = a3 * b3;
  print('El producto del número $a3 con el número $b3 es: $producto');
}