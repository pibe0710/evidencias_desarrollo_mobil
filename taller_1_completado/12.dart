import 'dart:io';
import 'dart:math';

void main() {
  Random dado = Random();
  int lanzamientos = 0;

  while (lanzamientos < 3) {
    int dado1 = dado.nextInt(6) + 1;
    int dado2 = dado.nextInt(6) + 1;

    print('Lanzamiento ${lanzamientos + 1}: $dado1 y $dado2');

    if (dado1 == dado2) {
      lanzamientos++;
      if (lanzamientos == 3) {
        print('¡Saca una ficha!');
        break;
      } else {
        print('Lanzar de nuevo');
      }
    } else {
      print('¡Lanza de nuevo!');
      break;
    }
  }
}
