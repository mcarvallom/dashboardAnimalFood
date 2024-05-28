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

import 'package:desktop_window/desktop_window.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await tamanioPantalla();
  runApp(MyApp());
}

Future<void> tamanioPantalla() async {
  // Establece el tamaño de la ventana
  await DesktopWindow.setWindowSize(Size(479, 600));

  // Establece el tamaño mínimo y máximo de la ventana
  await DesktopWindow.setMinWindowSize(Size(479, 600));
  await DesktopWindow.setMaxWindowSize(Size(479, 600));
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
