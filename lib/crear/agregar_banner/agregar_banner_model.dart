import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/menu_escritorio/menu_escritorio_widget.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import 'agregar_banner_widget.dart' show AgregarBannerWidget;
import 'package:flutter/material.dart';

class AgregarBannerModel extends FlutterFlowModel<AgregarBannerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuEscritorio component.
  late MenuEscritorioModel menuEscritorioModel;
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;

  @override
  void initState(BuildContext context) {
    menuEscritorioModel = createModel(context, () => MenuEscritorioModel());
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuEscritorioModel.dispose();
    topEscritorioModel.dispose();
  }
}
