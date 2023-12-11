import '/backend/backend.dart';
import '/components/top_escritorio_widget.dart';
import '/components/top_movil_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'evidencia_entrega_fallida_widget.dart'
    show EvidenciaEntregaFallidaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class EvidenciaEntregaFallidaModel
    extends FlutterFlowModel<EvidenciaEntregaFallidaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;
  // Model for topMovil component.
  late TopMovilModel topMovilModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
    topMovilModel = createModel(context, () => TopMovilModel());
  }

  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
    topMovilModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
