import 'dart:io';

void main() {
  List<List<dynamic>> productos = [
    ['P01', 'Manzanas', 2500, true],
    ['P02', 'Pan', 1800, false],
    ['P03', 'Jugo', 3200, true],
    ['P04', 'Leche', 2900, false],
    ['P05', 'Arroz', 3500, false],
    ['P06', 'Galletas', 2700, true],
    ['P07', 'Huevos', 4000, false],
    ['P08', 'Queso', 5600, true],
    ['P09', 'Yogurt', 4300, true],
    ['P10', 'Cafe', 3900, true]
  ];

  List<List<dynamic>> factura = List.generate(11, (_) => List.filled(7, ''));

  int item = 1;
  while (item <= 10) {
    stdout.write('Ingrese el ID del producto: ');
    String id = stdin.readLineSync()!;
    int index = -1;
    for (int i = 0; i < productos.length; i++) {
      if (productos[i][0] == id) {
        index = i;
        break;
      }
    }

    if (index == -1) {
      print('Producto no encontrado.');
      continue;
    }

    stdout.write('Ingrese la cantidad que desea comprar: ');
    int cantidad = int.parse(stdin.readLineSync()!);

    String nombre = productos[index][1];
    int precioUnidad = productos[index][2];
    bool tieneIva = productos[index][3];

    double iva = tieneIva ? precioUnidad * cantidad * 0.19 : 0;
    double total = precioUnidad * cantidad + iva;

    factura[item - 1][0] = item;
    factura[item - 1][1] = id;
    factura[item - 1][2] = nombre;
    factura[item - 1][3] = cantidad;
    factura[item - 1][4] = precioUnidad;
    factura[item - 1][5] = iva;
    factura[item - 1][6] = total;

    stdout.write('¿Desea ingresar otro producto? (s/n): ');
    String continuar = stdin.readLineSync()!.toLowerCase();
    if (continuar != 's') {
      break;
    }

    item++;
  }

  print('\nFactura generada:\n');
  print('Item | ID | Producto | Cantidad | Precio Unidad | IVA | Total');

  for (int i = 0; i < item; i++) {
    print('${factura[i][0]} | ${factura[i][1]} | ${factura[i][2]} | ${factura[i][3]} | ${factura[i][4]} | ${factura[i][5]} | ${factura[i][6]}');
  }
}