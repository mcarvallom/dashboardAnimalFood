import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'detalle_orden_widget.dart' show DetalleOrdenWidget;
import 'package:flutter/material.dart';

class DetalleOrdenModel extends FlutterFlowModel<DetalleOrdenWidget> {
  /// Query cache managers for this widget.

  final _userOrdenManager = FutureRequestManager<List<UserRow>>();
  Future<List<UserRow>> userOrden({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UserRow>> Function() requestFn,
  }) =>
      _userOrdenManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserOrdenCache() => _userOrdenManager.clear();
  void clearUserOrdenCacheKey(String? uniqueKey) =>
      _userOrdenManager.clearRequest(uniqueKey);

  final _productoIdOrdenItemsManager =
      FutureRequestManager<List<ProductoRow>>();
  Future<List<ProductoRow>> productoIdOrdenItems({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProductoRow>> Function() requestFn,
  }) =>
      _productoIdOrdenItemsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProductoIdOrdenItemsCache() => _productoIdOrdenItemsManager.clear();
  void clearProductoIdOrdenItemsCacheKey(String? uniqueKey) =>
      _productoIdOrdenItemsManager.clearRequest(uniqueKey);

  final _ordenItemsManager = FutureRequestManager<List<OrdenItemsRow>>();
  Future<List<OrdenItemsRow>> ordenItems({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<OrdenItemsRow>> Function() requestFn,
  }) =>
      _ordenItemsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOrdenItemsCache() => _ordenItemsManager.clear();
  void clearOrdenItemsCacheKey(String? uniqueKey) =>
      _ordenItemsManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearUserOrdenCache();

    clearProductoIdOrdenItemsCache();

    clearOrdenItemsCache();
  }
}
