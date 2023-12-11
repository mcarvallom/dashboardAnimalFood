import '/backend/backend.dart';
import '/components/top_escritorio_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'lista_categorias_widget.dart' show ListaCategoriasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListaCategoriasModel extends FlutterFlowModel<ListaCategoriasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel1;
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topEscritorioModel1 = createModel(context, () => TopEscritorioModel());
    topEscritorioModel2 = createModel(context, () => TopEscritorioModel());
  }

  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel1.dispose();
    topEscritorioModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
