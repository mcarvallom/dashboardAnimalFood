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
