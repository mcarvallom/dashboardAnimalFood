// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

import 'package:http/http.dart' as http;

Future getNet(int id, String tranKey, String nonce, String seed) async {
  // obtener respuesta de una api
  //String parametroDinamico = 'valorDinamico';

  String apiUrl = 'https://checkout.test.getnet.cl/api/session/$id';
  // Realizar la solicitud GET

  Map<String, dynamic> requestBody = {
    "auth": {
      "login": "7ffbb7bf1f7361b1200b2e8d74e1d76f",
      "tranKey": '$tranKey',
      "nonce": '$nonce',
      "seed": '$seed'
    }
  };

  // Convertir el cuerpo a JSON
  String jsonBody = json.encode(requestBody);

  // Realizar la solicitud POST
  var response = await http.post(
    Uri.parse(apiUrl),
    headers: {
      'Content-Type': 'application/json',
    },
    body: jsonBody,
  );

  if (response.statusCode == 200) {
    // Convertir la respuesta JSON a un mapa
    Map<String, dynamic> data = json.decode(response.body);

    // Obtener el valor de $.status.status
    String status = data['status']['status'];

    // Verificar si el estado es "APPROVED" y retornar true
    bool isApproved = (status == 'APPROVED');
    return isApproved;
  } else {
    bool isApproved = false;
    return isApproved;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
