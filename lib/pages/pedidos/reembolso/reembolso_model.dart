import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/reembolsar_pago/reembolsar_pago_widget.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'reembolso_widget.dart' show ReembolsoWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
    reembolsarPagoModel1 = createModel(context, () => ReembolsarPagoModel());
    topMovilModel = createModel(context, () => TopMovilModel());
    reembolsarPagoModel2 = createModel(context, () => ReembolsarPagoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
    reembolsarPagoModel1.dispose();
    topMovilModel.dispose();
    reembolsarPagoModel2.dispose();
  }
}
