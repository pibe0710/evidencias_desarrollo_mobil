import 'dart:io';

void main() {
  stdout.write('Ingrese el primer número: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el segundo número: ');
  int num2 = int.parse(stdin.readLineSync()!);

  int menor = num1 < num2 ? num1 : num2;
  int mayor = num1 > num2 ? num1 : num2;

  stdout.write('¿Desea ver la serie "par" o "impar"?: ');
  String tipo = stdin.readLineSync()!.toLowerCase();

  int actual = menor;

  while (actual <= mayor) {
    if (tipo == 'par' && actual % 2 == 0) {
      print(actual);
    } else if (tipo == 'impar' && actual % 2 != 0) {
      print(actual);
    }
    actual++;
  }
}