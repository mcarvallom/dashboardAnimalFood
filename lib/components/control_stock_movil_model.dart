import '/components/control_stock_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'control_stock_movil_widget.dart' show ControlStockMovilWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ControlStockMovilModel extends FlutterFlowModel<ControlStockMovilWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for controlStock component.
  late ControlStockModel controlStockModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    controlStockModel = createModel(context, () => ControlStockModel());
  }

  void dispose() {
    controlStockModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
