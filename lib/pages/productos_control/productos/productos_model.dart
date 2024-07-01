import '/backend/backend.dart';
import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import 'productos_widget.dart' show ProductosWidget;
import 'package:flutter/material.dart';

class ProductosModel extends FlutterFlowModel<ProductosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
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
  void initState(BuildContext context) {
    barraMenuModel = createModel(context, () => BarraMenuModel());
    topMovilModel = createModel(context, () => TopMovilModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraMenuModel.dispose();
    topMovilModel.dispose();
    buscarProductoFocusNode?.dispose();
    buscarProductoTextController?.dispose();
  }
}
