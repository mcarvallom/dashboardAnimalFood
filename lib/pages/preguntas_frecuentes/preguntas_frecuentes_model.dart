import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'preguntas_frecuentes_widget.dart' show PreguntasFrecuentesWidget;
import 'package:flutter/material.dart';

class PreguntasFrecuentesModel
    extends FlutterFlowModel<PreguntasFrecuentesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;

  @override
  void initState(BuildContext context) {
    topMovilModel = createModel(context, () => TopMovilModel());
    barraMenuModel = createModel(context, () => BarraMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilModel.dispose();
    barraMenuModel.dispose();
  }
}
