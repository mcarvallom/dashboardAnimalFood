import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'sitio_web_widget.dart' show SitioWebWidget;
import 'package:flutter/material.dart';

class SitioWebModel extends FlutterFlowModel<SitioWebWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;

  @override
  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
  }
}
