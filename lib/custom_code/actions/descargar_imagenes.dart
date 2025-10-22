// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'dart:html' as html; // Disponible solo en Flutter Web
import 'package:http/http.dart' as http;

/// Descarga una lista de imágenes en Flutter Web.
/// Funciona igual si se abre desde el navegador en un celular o un PC.
/// Los archivos se guardarán en la carpeta de "Descargas" del navegador.
Future<void> descargarImagenes(List<String> imagenes) async {
  try {
    for (int i = 0; i < imagenes.length; i++) {
      final imageUrl = imagenes[i];

      print('⬇️ Descargando imagen ${i + 1} desde: $imageUrl');

      // Descargar la imagen desde la URL
      final response = await http.get(Uri.parse(imageUrl));

      if (response.statusCode == 200) {
        final Uint8List bytes = response.bodyBytes;

        // Crear un blob con los datos de la imagen
        final blob = html.Blob([bytes]);

        // Crear una URL temporal para el blob
        final url = html.Url.createObjectUrlFromBlob(blob);

        // Crear un enlace invisible para forzar la descarga
        final anchor = html.AnchorElement(href: url)
          ..download = 'imagen_${i + 1}.jpg'
          ..style.display = 'none';

        // Agregar el enlace al DOM, hacer click y luego eliminarlo
        html.document.body?.append(anchor);
        anchor.click();
        anchor.remove();

        // Liberar la URL temporal
        html.Url.revokeObjectUrl(url);

        // Pequeña pausa entre descargas
        await Future.delayed(const Duration(milliseconds: 400));
      } else {
        print(
            '⚠️ No se pudo descargar la imagen ${i + 1}: ${response.statusCode}');
      }
    }

    print('✅ Descarga completada correctamente.');
  } catch (e) {
    print('❌ Error al descargar imágenes: $e');
  }
}
