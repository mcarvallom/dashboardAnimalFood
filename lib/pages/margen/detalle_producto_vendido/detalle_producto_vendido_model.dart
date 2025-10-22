import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'detalle_producto_vendido_widget.dart' show DetalleProductoVendidoWidget;
import 'package:flutter/material.dart';

class DetalleProductoVendidoModel
    extends FlutterFlowModel<DetalleProductoVendidoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductosmasvendidosmesRow>();

  /// Query cache managers for this widget.

  final _productoIdManager = FutureRequestManager<List<ProductoRow>>();
  Future<List<ProductoRow>> productoId({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProductoRow>> Function() requestFn,
  }) =>
      _productoIdManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductoIdCache() => _productoIdManager.clear();
  void clearProductoIdCacheKey(String? uniqueKey) =>
      _productoIdManager.clearRequest(uniqueKey);

  final _productosmasvendidosManager =
      FutureRequestManager<List<ProductosmasvendidosmesRow>>();
  Future<List<ProductosmasvendidosmesRow>> productosmasvendidos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProductosmasvendidosmesRow>> Function() requestFn,
  }) =>
      _productosmasvendidosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductosmasvendidosCache() => _productosmasvendidosManager.clear();
  void clearProductosmasvendidosCacheKey(String? uniqueKey) =>
      _productosmasvendidosManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();

    /// Dispose query cache managers for this widget.

    clearProductoIdCache();

    clearProductosmasvendidosCache();
  }
}
