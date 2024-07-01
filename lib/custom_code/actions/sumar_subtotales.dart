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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<double> sumarSubtotales(
    List<DocumentReference> selectedItemsList) async {
  double total = 0.0;

  for (DocumentReference itemRef in selectedItemsList) {
    DocumentSnapshot itemSnapshot = await itemRef.get();
    Map<String, dynamic>? itemData =
        itemSnapshot.data() as Map<String, dynamic>?;

    if (itemData != null && itemData.containsKey('subTotal')) {
      total += (itemData['subTotal'] as double?) ?? 0.0;
    }
  }

  return total;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
