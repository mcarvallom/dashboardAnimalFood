import '/flutter_flow/flutter_flow_util.dart';
import 'ventas_diarias_widget.dart' show VentasDiariasWidget;
import 'package:flutter/material.dart';

class VentasDiariasModel extends FlutterFlowModel<VentasDiariasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
