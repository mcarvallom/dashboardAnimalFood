import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'lista_prod_recomendados_widget.dart' show ListaProdRecomendadosWidget;
import 'package:flutter/material.dart';

class ListaProdRecomendadosModel
    extends FlutterFlowModel<ListaProdRecomendadosWidget> {
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
