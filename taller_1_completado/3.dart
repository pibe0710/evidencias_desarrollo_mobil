import 'dart:io';

void main(){
    stdout.write('\nIngrese el número A: ');
  int a1 = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el número B: ');
  int b1 = int.parse(stdin.readLineSync()!);
  int suma = a1 + b1;
  print('La suma del número $a1 con el número $b1 es: $suma');
}