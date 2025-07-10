import 'dart:io';
import 'dart:math';

void main() {
  double radio = 0;
  double altura = 0;

  while (radio <= 0) {
    stdout.write('Ingrese el radio del cilindro (debe ser mayor que 0): ');
    radio = double.parse(stdin.readLineSync()!);
  }

  while (altura <= 0) {
    stdout.write('Ingrese la altura del cilindro (debe ser mayor que 0): ');
    altura = double.parse(stdin.readLineSync()!);
  }

  double areaLateral = 2 * pi * radio * altura;
  double areaBase = pi * pow(radio, 2);
  double areaTotal = areaLateral + 2 * areaBase;
  double perimetroBase = 2 * pi * radio;
  double volumen = areaBase * altura;

  print('\nMaterial necesario para construir el cilindro con tapa:');
  print('Área total: $areaTotal unidades cuadradas');
  print('Perímetro de la base: $perimetroBase unidades simples');
  print('Volumen: $volumen unidades cúbicas');
}