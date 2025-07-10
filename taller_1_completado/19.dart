import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Escriba "baloto" para generar números aleatorios: ');
  String entrada = stdin.readLineSync()!.toLowerCase();

  if (entrada == 'baloto') {
    List<int> numeros = [];
    Random random = Random();

    while (numeros.length < 6) {
      int numero = random.nextInt(45) + 1;
      bool repetido = false;
      int i = 0;
      while (i < numeros.length) {
        if (numeros[i] == numero) {
          repetido = true;
          break;
        }
        i++;
      }
      if (!repetido) {
        numeros.add(numero);
      }
    }

    int j = 0;
    while (j < numeros.length - 1) {
      int k = 0;
      while (k < numeros.length - j - 1) {
        if (numeros[k] > numeros[k + 1]) {
          int temp = numeros[k];
          numeros[k] = numeros[k + 1];
          numeros[k + 1] = temp;
        }
        k++;
      }
      j++;
    }

    print('Números generados: $numeros');
  } else {
    print('Entrada no válida. Por favor, escriba "baloto".');
  }
}