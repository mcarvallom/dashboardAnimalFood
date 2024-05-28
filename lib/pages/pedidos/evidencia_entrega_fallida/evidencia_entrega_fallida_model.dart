import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'evidencia_entrega_fallida_widget.dart'
    show EvidenciaEntregaFallidaWidget;
import 'package:flutter/material.dart';

class EvidenciaEntregaFallidaModel
    extends FlutterFlowModel<EvidenciaEntregaFallidaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;

  @override
  void initState(BuildContext context) {
    topMovilModel = createModel(context, () => TopMovilModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilModel.dispose();
  }
}
