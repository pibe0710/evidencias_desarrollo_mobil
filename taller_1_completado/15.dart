import 'dart:io';

void main(){
    print('\nTablas de multiplicar del 1 al 10:');
  for (int tabla = 1; tabla <= 10; tabla++) {
    print('\nTabla del $tabla:');
    for (int i = 1; i <= 10; i++) {
      print('$tabla x $i = ${tabla * i}');
    }
  }
}