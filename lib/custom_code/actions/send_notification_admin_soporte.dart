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

import 'package:http/http.dart' as http;

Future<void> sendNotificationAdminSoporte(
    String mensaje, String externalid) async {
  final String apiUrl = 'https://onesignal.com/api/v1/notifications';
  final String restApiKey = 'ZDM0YjZkYTktMDM4Zi00OWQ5LWI3NDktOTk4OWNmNmFiOWQw';

  Map<String, dynamic> requestBody = {
    "app_id": "5c6082e7-1c93-4e63-9011-b78507f3362c",
    "contents": {"en": mensaje, "es": mensaje},
    "headings": {"en": "Soporte", "es": "Soporte"},
    "app_url": "dashboardanimalfood://dashboardanimalfood.com/listaDeMensajes",
    "target_channel": "push",
    "small_icon": "assets/images/iconoApp.png",
    "large_icon": "assets/images/iconoApp.png",
    "include_aliases": {
      "external_id": [externalid]
    }
  };
  final http.Response response = await http.post(
    Uri.parse(apiUrl),
    headers: {
      "Content-Type": "application/json; charset=utf-8",
      "Authorization": "Basic $restApiKey",
    },
    body: jsonEncode(requestBody),
  );
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
