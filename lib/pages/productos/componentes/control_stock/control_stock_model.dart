import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'control_stock_widget.dart' show ControlStockWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ControlStockModel extends FlutterFlowModel<ControlStockWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for stockSinV widget.
  int? stockSinVValue;
  Completer<List<ProductoRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
