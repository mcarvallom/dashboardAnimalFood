import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'margen_widget.dart' show MargenWidget;
import 'package:flutter/material.dart';

class MargenModel extends FlutterFlowModel<MargenWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscarProducto widget.
  FocusNode? buscarProductoFocusNode;
  TextEditingController? buscarProductoTextController;
  String? Function(BuildContext, String?)?
      buscarProductoTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductosmasvendidosmesRow>();

  /// Query cache managers for this widget.

  final _productoManager = FutureRequestManager<List<ProductoRow>>();
  Future<List<ProductoRow>> producto({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProductoRow>> Function() requestFn,
  }) =>
      _productoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductoCache() => _productoManager.clear();
  void clearProductoCacheKey(String? uniqueKey) =>
      _productoManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarProductoFocusNode?.dispose();
    buscarProductoTextController?.dispose();

    paginatedDataTableController.dispose();

    /// Dispose query cache managers for this widget.

    clearProductoCache();
  }
}
