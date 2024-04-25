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

Future<void> sendNotificationStock(
    String mensaje, String titulo, List<DocumentReference> externalid) async {
  final String apiUrl = 'https://onesignal.com/api/v1/notifications';
  final String restApiKey = 'NTc0MDI3NjUtYmExMy00YjA0LWE4MGItNjYwN2IyODU5NGMw';

  Map<String, dynamic> requestBody = {
    "app_id": "a60882a0-3d89-49bf-a503-33b15024a6c9",
    "contents": {"en": mensaje, "es": mensaje},
    "headings": {"en": titulo, "es": titulo},
    "target_channel": "push",
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
