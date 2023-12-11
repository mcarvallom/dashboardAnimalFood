import '/backend/backend.dart';
import '/components/control_stock_movil_widget.dart';
import '/components/control_stock_widget.dart';
import '/components/top_escritorio_widget.dart';
import '/components/top_movil_vendedor_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'stock_vendedor_widget.dart' show StockVendedorWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class StockVendedorModel extends FlutterFlowModel<StockVendedorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<ProductoRecord> simpleSearchResults1 = [];
  // Model for topMovilVendedor component.
  late TopMovilVendedorModel topMovilVendedorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<ProductoRecord> simpleSearchResults2 = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    topMovilVendedorModel = createModel(context, () => TopMovilVendedorModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    topMovilVendedorModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
