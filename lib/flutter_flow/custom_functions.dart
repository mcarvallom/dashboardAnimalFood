import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int porcentajepedidosEnProceso(
  int totalPedidos,
  int totalCompletado,
) {
  // calcular porcentaje retornando int
  int porcentaje = 0;
  if (totalPedidos > 0) {
    double completado = totalCompletado.toDouble();
    double pedidos = totalPedidos.toDouble();
    double porcentajeDouble = (1 - (completado / pedidos)) * 100;
    porcentaje = porcentajeDouble.round();
    if (porcentaje > porcentaje.toInt()) {
      porcentaje = porcentaje.toInt();
    }
  }
  return porcentaje;
}

double cantidadestadoCompletado(
  int cantidadCompletado,
  int cantidadTotal,
) {
  return cantidadCompletado / cantidadTotal;
}

int porcentajepedidosCompletado(
  int totalPedidos,
  int totalCompletado,
) {
  // calcular porcentaje retornando int
  int porcentaje = 0;
  if (totalPedidos > 0) {
    double completado = totalCompletado.toDouble();
    double pedidos = totalPedidos.toDouble();
    double porcentajeDouble = (completado / pedidos) * 100;
    porcentaje = porcentajeDouble.round();
    if (porcentaje > porcentaje.toInt()) {
      porcentaje = porcentaje.toInt();
    }
  }
  return porcentaje;
}

String fechaExpiracion() {
  //String seed = DateTime.now().toIso8601String();
  DateTime now = DateTime.now();
  String seed =
      "${now.year}-${now.month}-${now.day + 1}T${now.hour}:${now.minute}:${now.second}-05:00";

  return seed;
}

int nonce() {
  int contador = 0;
  contador = (contador + 1) % 10000000000;
  return contador;
}

String seed() {
  DateTime now = DateTime.now();
  String seed =
      "${now.year}-${now.month}-${now.day}T${now.hour - 2}:${now.minute}:${now.second}-05:00";

  return seed;
}

int? numeroWSP(int? numero) {
  // ultimos 8 numeros de una cadena
  if (numero == null) {
    return null;
  }
  String numeroString = numero.toString();
  if (numeroString.length < 8) {
    return null;
  }
  return int.parse(numeroString.substring(numeroString.length - 8));
}

double subtotalItem(
  int qty,
  double precio,
) {
  // Add your function code here!
  return qty * precio;
}

int? sumaVentas(List<int> ventas) {
  // quiero sumar los numeros de la lista
  int total = 0;
  for (int venta in ventas) {
    total += venta;
  }
  return total;
}

int? sumaGastos(
  List<int>? gastos,
  int? petroleo,
  int? peaje,
) {
  // sumar los gastos, el petroleo y el peaje
  if (gastos == null || petroleo == null || peaje == null) {
    return null;
  }
  int totalGastos = gastos.fold(0, (a, b) => a + b);
  return totalGastos + petroleo + peaje;
}

int sumarTotales(
  int? monto1,
  int? monto2,
  int? monto3,
) {
  return monto1! + monto2! + monto3!;
}

double numeroNegativo(double numero) {
  // convierte numero a numero negativo
  return -numero;
}
