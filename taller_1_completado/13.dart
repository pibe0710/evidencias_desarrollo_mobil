import 'dart:io';

void main() {
  stdout.write('Ingrese el nombre del artículo: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese el valor por unidad: ');
  double valorUnidad = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la cantidad a llevar: ');
  int cantidad = int.parse(stdin.readLineSync()!);

  stdout.write('¿Es de la canasta familiar? (s/n): ');
  String respuesta = stdin.readLineSync()!.toLowerCase();

  double subtotal = valorUnidad * cantidad;
  double iva = 0;

  if (respuesta == 'n') {
    iva = subtotal * 0.19;
  }

  double total = subtotal + iva;

  print('\nResumen de compra:');
  print('Artículo: $nombre');
  print('Valor por unidad: $valorUnidad');
  print('Cantidad: $cantidad');
  print('Subtotal: $subtotal');
  print('IVA aplicado: ${iva.toStringAsFixed(2)}');
  print('Total a pagar: ${total.toStringAsFixed(2)}');
}
