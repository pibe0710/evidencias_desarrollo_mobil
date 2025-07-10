import 'dart:io';


void main() {
  int opcion = 0;

  while (opcion < 1 || opcion > 3) {
    print('\nSeleccione una figura:');
    print('1. Triángulo');
    print('2. Rectángulo');
    print('3. Círculo');
    stdout.write('Opción: ');
    opcion = int.parse(stdin.readLineSync()!);
  }

  if (opcion == 1) {
    stdout.write('Ingrese la base del triángulo: ');
    double base = double.parse(stdin.readLineSync()!);
    stdout.write('Ingrese la altura del triángulo: ');
    double altura = double.parse(stdin.readLineSync()!);
    stdout.write('Ingrese el lado 1: ');
    double lado1 = double.parse(stdin.readLineSync()!);
    stdout.write('Ingrese el lado 2: ');
    double lado2 = double.parse(stdin.readLineSync()!);

    double area = (base * altura) / 2;
    double perimetro = base + lado1 + lado2;

    if (area > 0 && perimetro > 0) {
      print('\nFigura: Triángulo');
      print('Área: ${area} unidades cuadradas');
      print('Perímetro: ${perimetro} unidades simples');
    } else {
      print('Área o perímetro inválido.');
    }
  }

  if (opcion == 2) {
    stdout.write('Ingrese la base del rectángulo: ');
    double base = double.parse(stdin.readLineSync()!);
    stdout.write('Ingrese la altura del rectángulo: ');
    double altura = double.parse(stdin.readLineSync()!);

    double area = base * altura;
    double perimetro = 2 * (base + altura);

    if (area > 0 && perimetro > 0) {
      print('\nFigura: Rectángulo');
      print('Área: ${area} unidades cuadradas');
      print('Perímetro: ${perimetro} unidades simples');
    } else {
      print('Área o perímetro inválido.');
    }
  }

  if (opcion == 3) {
    stdout.write('Ingrese el radio del círculo: ');
    double radio = double.parse(stdin.readLineSync()!);

    double area = pi * pow(radio, 2);
    double perimetro = 2 * pi * radio;

    if (area > 0 && perimetro > 0) {
      print('\nFigura: Círculo');
      print('Área: ${area} unidades cuadradas');
      print('Perímetro: ${perimetro} unidades simples');
    } else {
      print('Área o perímetro inválido.');
    }
  }
}