import 'dart:io';

void main() {
  List<String> campos = ['nombre', 'apellido', 'edad', 'estado', 'teléfono'];
  List<List<String>> datos = List.generate(4, (_) => List.filled(5, ''));

  for (int i = 0; i < datos.length; i++) {
    print('Ingrese los datos del compañero ${i + 1}:');
    for (int j = 0; j < campos.length; j++) {
      stdout.write('${campos[j]}: ');
      String valor = stdin.readLineSync()!;
      datos[i][j] = valor;
    }
    print('');
  }

  print('Listado de compañeros:');
  for (int i = 0; i < datos.length; i++) {
    print('Compañero ${i + 1}:');
    for (int j = 0; j < campos.length; j++) {
      print('${campos[j]}: ${datos[i][j]}');
    }
    print('');
  }
}