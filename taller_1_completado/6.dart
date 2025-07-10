import 'dart:io';

void main(){
    stdout.write('Ingrese el número A: ');
  num a = num.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el número B: ');
  num b = num.parse(stdin.readLineSync()!);

  if (b != 0) {
    num resultado = a / b;
    print('La división del número $a entre el número $b es: $resultado');
  } else {
    print('Imposible la división por 0.');
  }
}