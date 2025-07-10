import 'dart:io';

void main(){
    int opcion = 0;

  while (opcion != 11) {
    print('\nMenú de operaciones matemáticas:');
    print('1. Suma');
    print('2. Resta');
    print('3. Multiplicación');
    print('4. División');
    print('5. Módulo');
    print('6. Cuadrado');
    print('7. Raíz cuadrada');
    print('8. Potencia');
    print('9. Porcentaje');
    print('10. Número aleatorio');
    print('11. Salir');
    stdout.write('Seleccione una opción: ');
    opcion = int.parse(stdin.readLineSync()!);

    if (opcion >= 1 && opcion <= 5 || opcion == 8 || opcion == 9) {
      stdout.write('Ingrese el primer número: ');
      num x = num.parse(stdin.readLineSync()!);
      stdout.write('Ingrese el segundo número: ');
      num y = num.parse(stdin.readLineSync()!);

      if (opcion == 1) {
        print('Suma: ${x + y}');
      } else if (opcion == 2) {
        print('Resta: ${x - y}');
      } else if (opcion == 3) {
        print('Multiplicación: ${x * y}');
      } else if (opcion == 4) {
        if (y != 0) {
          print('División: ${x / y}');
        } else {
          print('Imposible dividir por cero');
        }
      } else if (opcion == 5) {
        print('Módulo: ${x % y}');
      } else if (opcion == 8) {
        print('Potencia: ${pow(x, y)}');
      } else if (opcion == 9) {
        print('Porcentaje de $x respecto a $y: ${(x * y) / 100}');
      }
    } else if (opcion == 6) {
      stdout.write('Ingrese un número: ');
      num n = num.parse(stdin.readLineSync()!);
      print('Cuadrado: ${n * n}');
    } else if (opcion == 7) {
      stdout.write('Ingrese un número: ');
      num n = num.parse(stdin.readLineSync()!);
      print('Raíz cuadrada: ${sqrt(n)}');
    } else if (opcion == 10) {
      Random r = Random();
      print('Número aleatorio entre 1 y 100: ${r.nextInt(100) + 1}');
    } else if (opcion == 11) {
      print('Fin del programa.');
    } else {
      print('Opción inválida.');
    }
  }

}