import '/flutter_flow/flutter_flow_util.dart';
import 'tipo_categoria_widget.dart' show TipoCategoriaWidget;
import 'package:flutter/material.dart';

class TipoCategoriaModel extends FlutterFlowModel<TipoCategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
