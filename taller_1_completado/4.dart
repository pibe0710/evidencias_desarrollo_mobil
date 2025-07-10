import 'dart:io';

void main(){
     stdout.write('\nIngrese el número A: ');
  int a2 = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el número B: ');
  int b2 = int.parse(stdin.readLineSync()!);
  int resta = a2 - b2;
  print('La diferencia del número $a2 con el número $b2 es: $resta');
}