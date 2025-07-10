import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Ingrese la cantidad de jugadores: ');
  int cantidadJugadores = int.parse(stdin.readLineSync()!);
  List<String> jugadores = List.filled(cantidadJugadores, '');
  int acumulado = 0;
  Random random = Random();

  for (int i = 0; i < cantidadJugadores; i++) {
    stdout.write('Ingrese el nombre del jugador ${i + 1}: ');
    jugadores[i] = stdin.readLineSync()!;
  }

  while (acumulado >= 0) {
    for (int i = 0; i < cantidadJugadores; i++) {
      print('Acumulado actual: $acumulado');
      print('Turno de ${jugadores[i]}');

      int tiro1 = random.nextInt(6) + 1;
      print('Primer tiro: $tiro1');

      if (tiro1 == 1 || tiro1 == 6) {
        acumulado += 1;
        print('${jugadores[i]} pierde y agrega una moneda al acumulado.');
      } else {
        stdout.write('Ingrese su apuesta (máximo $acumulado): ');
        int apuesta = int.parse(stdin.readLineSync()!);
        if (apuesta > acumulado || apuesta < 1) {
          print('Apuesta inválida. El jugador pierde turno.');
          continue;
        }

        int tiro2 = random.nextInt(6) + 1;
        print('Segundo tiro: $tiro2');

        if (tiro2 > tiro1) {
          print('${jugadores[i]} gana $apuesta monedas.');
          acumulado -= apuesta;
        } else {
          print('${jugadores[i]} pierde y agrega $apuesta monedas al acumulado.');
          acumulado += apuesta;
        }
      }

      if (acumulado == 0) {
        print('El acumulado llegó a cero. Fin del juego.');
        break;
      }

      print('');
    }

    if (acumulado == 0) {
      break;
    }
  }
}