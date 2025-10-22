import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'dart:async';
import 'productos_widget.dart' show ProductosWidget;
import 'package:flutter/material.dart';

class ProductosModel extends FlutterFlowModel<ProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool requestCompleted = false;
  String? requestLastUniqueKey;
  // State field(s) for buscarProducto widget.
  FocusNode? buscarProductoFocusNode;
  TextEditingController? buscarProductoTextController;
  String? Function(BuildContext, String?)?
      buscarProductoTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductoRow>();

  /// Query cache managers for this widget.

  final _categoriaProductoManager = FutureRequestManager<List<CategoraRow>>();
  Future<List<CategoraRow>> categoriaProducto({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CategoraRow>> Function() requestFn,
  }) =>
      _categoriaProductoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCategoriaProductoCache() => _categoriaProductoManager.clear();
  void clearCategoriaProductoCacheKey(String? uniqueKey) =>
      _categoriaProductoManager.clearRequest(uniqueKey);

  final _productosManager = FutureRequestManager<List<ProductoRow>>();
  Future<List<ProductoRow>> productos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProductoRow>> Function() requestFn,
  }) =>
      _productosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductosCache() => _productosManager.clear();
  void clearProductosCacheKey(String? uniqueKey) =>
      _productosManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarProductoFocusNode?.dispose();
    buscarProductoTextController?.dispose();

    paginatedDataTableController.dispose();

    /// Dispose query cache managers for this widget.

    clearCategoriaProductoCache();

    clearProductosCache();
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
