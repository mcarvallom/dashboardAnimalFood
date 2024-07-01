import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'sub_categorias_widget.dart' show SubCategoriasWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class SubCategoriasModel extends FlutterFlowModel<SubCategoriasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;

  @override
  void initState(BuildContext context) {
    topMovilModel = createModel(context, () => TopMovilModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    barraMenuModel = createModel(context, () => BarraMenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilModel.dispose();
    barraMenuModel.dispose();
  }
}
