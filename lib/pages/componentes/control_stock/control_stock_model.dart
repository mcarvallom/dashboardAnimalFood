import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/variacion_stock/variacion_stock_widget.dart';
import 'control_stock_widget.dart' show ControlStockWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ControlStockModel extends FlutterFlowModel<ControlStockWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in controlStock widget.
  VariacionRecord? variacion;
  // State field(s) for stockSinV widget.
  int? stockSinVValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}