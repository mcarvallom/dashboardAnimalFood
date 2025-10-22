import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'stock_widget.dart' show StockWidget;
import 'package:flutter/material.dart';

class StockModel extends FlutterFlowModel<StockWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscarProducto widget.
  FocusNode? buscarProductoFocusNode;
  TextEditingController? buscarProductoTextController;
  String? Function(BuildContext, String?)?
      buscarProductoTextControllerValidator;
  bool requestCompleted = false;
  String? requestLastUniqueKey;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductoRow>();

  /// Query cache managers for this widget.

  final _stocksManager = FutureRequestManager<List<ProductoRow>>();
  Future<List<ProductoRow>> stocks({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProductoRow>> Function() requestFn,
  }) =>
      _stocksManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearStocksCache() => _stocksManager.clear();
  void clearStocksCacheKey(String? uniqueKey) =>
      _stocksManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarProductoFocusNode?.dispose();
    buscarProductoTextController?.dispose();

    paginatedDataTableController.dispose();

    /// Dispose query cache managers for this widget.

    clearStocksCache();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
