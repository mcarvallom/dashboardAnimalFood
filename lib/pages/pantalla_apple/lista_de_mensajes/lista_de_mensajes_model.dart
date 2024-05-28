import '/flutter_flow/flutter_flow_util.dart';
import 'lista_de_mensajes_widget.dart' show ListaDeMensajesWidget;
import 'package:flutter/material.dart';

class ListaDeMensajesModel extends FlutterFlowModel<ListaDeMensajesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
