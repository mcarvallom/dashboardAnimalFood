import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stock_page_widget.dart' show StockPageWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class StockPageModel extends FlutterFlowModel<StockPageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for buscarProducto widget.
  FocusNode? buscarProductoFocusNode;
  TextEditingController? buscarProductoTextController;
  String? Function(BuildContext, String?)?
      buscarProductoTextControllerValidator;
  List<ProductoRecord> simpleSearchResults = [];
  var escanear = '';
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  ProductoRecord? producto;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  VariacionRecord? variacion;

  @override
  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  @override
  void dispose() {
    buscarProductoFocusNode?.dispose();
    buscarProductoTextController?.dispose();
  }
}
