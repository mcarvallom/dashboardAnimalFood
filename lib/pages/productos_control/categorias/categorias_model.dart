import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'categorias_widget.dart' show CategoriasWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CategoriasModel extends FlutterFlowModel<CategoriasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMovil component.
  late TopMovilModel topMovilModel;

  @override
  void initState(BuildContext context) {
    topMovilModel = createModel(context, () => TopMovilModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMovilModel.dispose();
  }
}
