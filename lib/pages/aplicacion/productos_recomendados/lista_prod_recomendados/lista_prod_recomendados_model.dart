import '/backend/backend.dart';
import '/components/top_escritorio_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'lista_prod_recomendados_widget.dart' show ListaProdRecomendadosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaProdRecomendadosModel
    extends FlutterFlowModel<ListaProdRecomendadosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
  }

  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
