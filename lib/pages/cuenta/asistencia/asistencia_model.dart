import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'asistencia_widget.dart' show AsistenciaWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class AsistenciaModel extends FlutterFlowModel<AsistenciaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<AsistenciaRow>? asistenciaQuery;
  bool requestCompleted = false;
  String? requestLastUniqueKey;

  /// Query cache managers for this widget.

  final _asistenciaManager = FutureRequestManager<List<AsistenciaRow>>();
  Future<List<AsistenciaRow>> asistencia({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<AsistenciaRow>> Function() requestFn,
  }) =>
      _asistenciaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAsistenciaCache() => _asistenciaManager.clear();
  void clearAsistenciaCacheKey(String? uniqueKey) =>
      _asistenciaManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearAsistenciaCache();
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
