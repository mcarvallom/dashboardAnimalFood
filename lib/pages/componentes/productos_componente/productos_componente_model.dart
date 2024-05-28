import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'productos_componente_widget.dart' show ProductosComponenteWidget;
import 'package:flutter/material.dart';

class ProductosComponenteModel
    extends FlutterFlowModel<ProductosComponenteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for buscarProducto widget.
  FocusNode? buscarProductoFocusNode;
  TextEditingController? buscarProductoTextController;
  String? Function(BuildContext, String?)?
      buscarProductoTextControllerValidator;
  List<ProductoRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductoRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarProductoFocusNode?.dispose();
    buscarProductoTextController?.dispose();
  }
}
