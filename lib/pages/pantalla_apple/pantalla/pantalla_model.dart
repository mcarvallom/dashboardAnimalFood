import '/flutter_flow/flutter_flow_util.dart';
import 'pantalla_widget.dart' show PantallaWidget;
import 'package:flutter/material.dart';

class PantallaModel extends FlutterFlowModel<PantallaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
