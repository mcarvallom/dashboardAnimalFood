import '/flutter_flow/flutter_flow_util.dart';
import 'marcar_entrada_salida_widget.dart' show MarcarEntradaSalidaWidget;
import 'package:flutter/material.dart';

class MarcarEntradaSalidaModel
    extends FlutterFlowModel<MarcarEntradaSalidaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
