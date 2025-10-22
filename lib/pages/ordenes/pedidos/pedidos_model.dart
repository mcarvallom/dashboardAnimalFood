import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'pedidos_widget.dart' show PedidosWidget;
import 'package:flutter/material.dart';

class PedidosModel extends FlutterFlowModel<PedidosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  bool requestCompleted1 = false;
  String? requestLastUniqueKey1;
  bool requestCompleted2 = false;
  String? requestLastUniqueKey2;

  /// Query cache managers for this widget.

  final _ordenesManager = FutureRequestManager<List<OrdenRow>>();
  Future<List<OrdenRow>> ordenes({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<OrdenRow>> Function() requestFn,
  }) =>
      _ordenesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOrdenesCache() => _ordenesManager.clear();
  void clearOrdenesCacheKey(String? uniqueKey) =>
      _ordenesManager.clearRequest(uniqueKey);

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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearOrdenesCache();

    clearUserOrdenCache();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
