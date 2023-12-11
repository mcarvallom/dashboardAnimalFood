import '/backend/backend.dart';
import '/components/reembolsar_pago_widget.dart';
import '/components/top_escritorio_widget.dart';
import '/components/top_movil_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'reembolso_widget.dart' show ReembolsoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReembolsoModel extends FlutterFlowModel<ReembolsoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;
  // Model for reembolsarPago component.
  late ReembolsarPagoModel reembolsarPagoModel1;
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // Model for reembolsarPago component.
  late ReembolsarPagoModel reembolsarPagoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
    reembolsarPagoModel1 = createModel(context, () => ReembolsarPagoModel());
    topMovilModel = createModel(context, () => TopMovilModel());
    reembolsarPagoModel2 = createModel(context, () => ReembolsarPagoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
    reembolsarPagoModel1.dispose();
    topMovilModel.dispose();
    reembolsarPagoModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
