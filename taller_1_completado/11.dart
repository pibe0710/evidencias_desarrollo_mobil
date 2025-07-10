import 'dart:io';

void main() {
  int opcion = 0;

  while (opcion != 1 && opcion != 2) {
    print('Seleccione el método para identificar el triángulo:');
    print('1. Por ángulos');
    print('2. Por lados');
    stdout.write('Opción: ');
    opcion = int.parse(stdin.readLineSync()!);
  }

  if (opcion == 1) {
    double ang1 = 0, ang2 = 0, ang3 = 0;

    do {
      stdout.write('Ingrese el ángulo 1: ');
      ang1 = double.parse(stdin.readLineSync()!);
    } while (ang1 <= 0);

    do {
      stdout.write('Ingrese el ángulo 2: ');
      ang2 = double.parse(stdin.readLineSync()!);
    } while (ang2 <= 0);

    do {
      stdout.write('Ingrese el ángulo 3: ');
      ang3 = double.parse(stdin.readLineSync()!);
    } while (ang3 <= 0);

    double sumaAngulos = ang1 + ang2 + ang3;

    if (sumaAngulos != 180) {
      print('La suma de los ángulos no es 180°. No forma un triángulo.');
    } else {
      String tipo = '';

      if (ang1 == 90 || ang2 == 90 || ang3 == 90) {
        tipo = 'rectángulo';
      } else if (ang1 < 90 && ang2 < 90 && ang3 < 90) {
        tipo = 'acutángulo';
      } else {
        tipo = 'obtusángulo';
      }

      print('El triángulo es $tipo.');
    }
  }

  if (opcion == 2) {
    double lado1 = 0, lado2 = 0, lado3 = 0;

    do {
      stdout.write('Ingrese el lado 1: ');
      lado1 = double.parse(stdin.readLineSync()!);
    } while (lado1 <= 0);

    do {
      stdout.write('Ingrese el lado 2: ');
      lado2 = double.parse(stdin.readLineSync()!);
    } while (lado2 <= 0);

    do {
      stdout.write('Ingrese el lado 3: ');
      lado3 = double.parse(stdin.readLineSync()!);
    } while (lado3 <= 0);

    double max = [lado1, lado2, lado3].reduce((a, b) => a > b ? a : b);
    double sumaOtros = lado1 + lado2 + lado3 - max;

    if (sumaOtros <= max) {
      print('Los lados no forman un triángulo.');
    } else {
      String tipo = '';

      if (lado1 == lado2 && lado2 == lado3) {
        tipo = 'equilátero';
      } else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
        tipo = 'isósceles';
      } else {
        tipo = 'escaleno';
      }

      print('El triángulo es $tipo.');
    }
  }
}
