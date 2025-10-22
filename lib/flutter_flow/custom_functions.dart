import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String ponerPuntoalMil(String numero) {
  // poner punto al mil
  String result = '';
  int count = 0;
  for (int i = numero.length - 1; i >= 0; i--) {
    result = numero[i] + result;
    count++;
    if (count % 3 == 0 && i != 0) {
      result = '.' + result;
    }
  }
  return result;
}

int convertStringtoInt(String string) {
  // convert String to Int
  return int.parse(string);
}

int mesActual() {
  // obtener mes actual
  return DateTime.now().month;
}

int? doubleToInt(double numeroDouble) {
  // double To Int
  return numeroDouble.toInt();
}

DateTime formatDateForSupabase(
  int year,
  int monthName,
  int day,
) {
  // format Date timestamp
  return DateTime(year, monthName, day);
}

int? decimalAEnteroPorcentaje(double? decimal) {
  if (decimal == null) {
    return null; // Return null if the input is null
  }
  return (decimal * 100)
      .round(); // Multiply by 100 and round to the nearest integer
}

String retornarImagen(String url) {
  // retornar imagen desde url

  return url; // Return the URL if it has a valid image extension
}

String antesdearroba(String correo) {
  // dejar antes de arroba
  return correo.split('@')[0];
}

String despuesdearroba(String correo) {
  // dejar antes de arroba
  return correo.split('@')[1];
}

int sumar(List<int> numeros) {
  // sumar numeros de lista
  int suma = 0; // Initialize sum variable
  for (int numero in numeros) {
    // Iterate through the list
    suma += numero; // Add each number to the sum
  }
  return suma; // Return the total sum
}

bool validarRut(
  int run,
  String dv,
) {
  try {
    // Convertir el run a String y normalizar el dv
    final runStr = run.toString();
    final dvNormalizado = dv.toUpperCase();

    // Validar formato básico del DV
    if (!RegExp(r'^[0-9K]$').hasMatch(dvNormalizado)) {
      return false;
    }

    // Validar longitud del RUN (7 u 8 dígitos)
    if (runStr.length < 7 || runStr.length > 8) {
      return false;
    }

    // Calcular el DV esperado
    final dvCalculado = _calcularDigitoVerificador(runStr);

    // Comparar con el DV proporcionado
    return dvNormalizado == dvCalculado;
  } catch (e) {
    // En caso de cualquier error, considerar inválido
    return false;
  }
}

// Función auxiliar idéntica a la de tu clase original
String _calcularDigitoVerificador(String numero) {
  int suma = 0;
  int multiplicador = 2;

  for (int i = numero.length - 1; i >= 0; i--) {
    int digito = int.parse(numero[i]);
    suma += digito * multiplicador;
    multiplicador = multiplicador == 7 ? 2 : multiplicador + 1;
  }

  int resto = suma % 11;
  String dv = (11 - resto).toString();

  if (dv == '11') return '0';
  if (dv == '10') return 'K';

  return dv;
}
