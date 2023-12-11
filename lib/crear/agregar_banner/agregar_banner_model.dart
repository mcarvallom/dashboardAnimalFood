import '/components/menu_escritorio_widget.dart';
import '/components/top_escritorio_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'agregar_banner_widget.dart' show AgregarBannerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgregarBannerModel extends FlutterFlowModel<AgregarBannerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuEscritorio component.
  late MenuEscritorioModel menuEscritorioModel;
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuEscritorioModel = createModel(context, () => MenuEscritorioModel());
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuEscritorioModel.dispose();
    topEscritorioModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
