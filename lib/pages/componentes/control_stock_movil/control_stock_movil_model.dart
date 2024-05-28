import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/control_stock/control_stock_widget.dart';
import 'control_stock_movil_widget.dart' show ControlStockMovilWidget;
import 'package:flutter/material.dart';

class ControlStockMovilModel extends FlutterFlowModel<ControlStockMovilWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in controlStockMovil widget.
  List<VariacionRecord>? variedades;
  // Model for controlStock component.
  late ControlStockModel controlStockModel;

  @override
  void initState(BuildContext context) {
    controlStockModel = createModel(context, () => ControlStockModel());
  }

  @override
  void dispose() {
    controlStockModel.dispose();
  }
}
