// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

String tranKey(String login, String secretKey, String seed, int nonce) {
  // Concatenar nonce, seed y secretKey

  String tranKey =
      base64.encode(sha256.convert(utf8.encode('$nonce$seed$secretKey')).bytes);

  return tranKey;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
