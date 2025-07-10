import 'dart:io';

void main() {
  int opcion = 0;

  while (opcion != 5) {
    print('\nMenú de operaciones:');
    print('1. Suma sin parámetros y sin retorno');
    print('2. Resta con parámetros y sin retorno');
    print('3. Multiplicación sin parámetros y con retorno');
    print('4. División con parámetros y con retorno');
    print('5. Salir');
    stdout.write('Seleccione una opción: ');
    opcion = int.parse(stdin.readLineSync()!);

    if (opcion == 1) {
      sumarSinParametrosSinRetorno();
    } else if (opcion == 2) {
      stdout.write('Ingrese el primer número: ');
      int a = int.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el segundo número: ');
      int b = int.parse(stdin.readLineSync()!);
      restarConParametrosSinRetorno(a, b);
    } else if (opcion == 3) {
      int resultado = multiplicarSinParametrosConRetorno();
      print('Resultado de la multiplicación: $resultado');
    } else if (opcion == 4) {
      stdout.write('Ingrese el primer número: ');
      num a = num.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el segundo número: ');
      num b = num.parse(stdin.readLineSync()!);
      num resultado = dividirConParametrosConRetorno(a, b);
      print('Resultado de la división: $resultado');
    } else if (opcion == 5) {
      print('Programa finalizado.');
    } else {
      print('Opción inválida.');
    }
  }
}

void sumarSinParametrosSinRetorno() {
  stdout.write('Ingrese el primer número: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el segundo número: ');
  int b = int.parse(stdin.readLineSync()!);
  int suma = a + b;
  print('Resultado de la suma: $suma');
}

void restarConParametrosSinRetorno(int a, int b) {
  int resultado = a - b;
  print('Resultado de la resta: $resultado');
}

int multiplicarSinParametrosConRetorno() {
  stdout.write('Ingrese el primer número: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el segundo número: ');
  int b = int.parse(stdin.readLineSync()!);
  return a * b;
}

num dividirConParametrosConRetorno(num a, num b) {
  if (b == 0) {
    print('No se puede dividir entre cero.');
    return 0;
  }
  return a / b;
}