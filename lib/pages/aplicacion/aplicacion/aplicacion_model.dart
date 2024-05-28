import '/flutter_flow/flutter_flow_util.dart';
import 'aplicacion_widget.dart' show AplicacionWidget;
import 'package:flutter/material.dart';

class AplicacionModel extends FlutterFlowModel<AplicacionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
