import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  var nombre_trabajador;
  var tipo_trabajador;
  double renta = 0.0;

  bool seaplica = false;

  print('Digite el nombre del trabajador: ');
  nombre_trabajador = stdin.readLineSync();

  print('Digite el tipo de trabajador: ');
  tipo_trabajador = stdin.readLineSync();

  print('Digite las horas trabajas en el mes');
  var horas = stdin.readLineSync();

  print('Digite el pago por hora');
  var ph = stdin.readLineSync();

  //conversión de tipo
  double ht = double.parse('$horas');
  double pah = double.parse('$ph');
  double pago = ht * pah;

  if (tipo_trabajador == 'servicio') {
    renta = pago * 0.1;
    pago = pago - renta;
    seaplica = true;
  } else if (tipo_trabajador == 'permanente') {
    pago = pago;
    seaplica = false;
  } else {}

  print('El nombre del trabajador es: $nombre_trabajador');
  print('El tipo de trabajador es: $tipo_trabajador');
  if (seaplica) {
    print('El pago del trabajador es: $pago');
    print('El descuento de la renta es: $renta');
  } else {
    print('El pago del trabajador es: $pago');
  }

  //print('El pago del trabajador es: ${pago-1}');
}
