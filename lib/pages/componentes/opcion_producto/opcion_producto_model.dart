import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/control_stock/control_stock_widget.dart';
import 'opcion_producto_widget.dart' show OpcionProductoWidget;
import 'package:flutter/material.dart';

class OpcionProductoModel extends FlutterFlowModel<OpcionProductoWidget> {
  ///  State fields for stateful widgets in this component.

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
