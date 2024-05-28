import '/flutter_flow/flutter_flow_util.dart';
import 'info_perfil_widget.dart' show InfoPerfilWidget;
import 'package:flutter/material.dart';

class InfoPerfilModel extends FlutterFlowModel<InfoPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
