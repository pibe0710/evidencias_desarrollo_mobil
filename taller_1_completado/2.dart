import 'dart:io';

void main(){
stdout.write('\nIngrese su nombre: ');
  String nombreUsuario = stdin.readLineSync()!;
  stdout.write('Ingrese su sexo: ');
  String sexoUsuario = stdin.readLineSync()!;
  stdout.write('Ingrese su edad: ');
  int edadUsuario = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese su salario (incluyendo centavos): ');
  double salarioUsuario = double.parse(stdin.readLineSync()!);
  stdout.write('¿Tiene vehículo de transporte? (true/false): ');
  bool vehiculoUsuario = stdin.readLineSync()!.toLowerCase() == 'true';

  print('\nNombre: $nombreUsuario');
  print('Sexo: $sexoUsuario');
  print('Edad: $edadUsuario');
  print('Salario: $salarioUsuario');
  print('¿Tiene vehículo?: $vehiculoUsuario');
}