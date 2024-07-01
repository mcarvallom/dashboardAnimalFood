import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'detalle_orden_widget.dart' show DetalleOrdenWidget;
import 'package:flutter/material.dart';

class DetalleOrdenModel extends FlutterFlowModel<DetalleOrdenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  bool biometric = false;

  @override
  void initState(BuildContext context) {
    barraMenuModel = createModel(context, () => BarraMenuModel());
    topMovilModel = createModel(context, () => TopMovilModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraMenuModel.dispose();
    topMovilModel.dispose();
  }
}
