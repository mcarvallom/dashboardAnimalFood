import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'clientes_widget.dart' show ClientesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ClientesModel extends FlutterFlowModel<ClientesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscarCliente widget.
  FocusNode? buscarClienteFocusNode;
  TextEditingController? buscarClienteTextController;
  String? Function(BuildContext, String?)? buscarClienteTextControllerValidator;
  bool requestCompleted = false;
  String? requestLastUniqueKey;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UserRow>();

  /// Query cache managers for this widget.

  final _clientesManager = FutureRequestManager<List<UserRow>>();
  Future<List<UserRow>> clientes({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UserRow>> Function() requestFn,
  }) =>
      _clientesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearClientesCache() => _clientesManager.clear();
  void clearClientesCacheKey(String? uniqueKey) =>
      _clientesManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarClienteFocusNode?.dispose();
    buscarClienteTextController?.dispose();

    paginatedDataTableController.dispose();

    /// Dispose query cache managers for this widget.

    clearClientesCache();
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
