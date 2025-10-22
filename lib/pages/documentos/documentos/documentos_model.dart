import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'dart:async';
import 'documentos_widget.dart' show DocumentosWidget;
import 'package:flutter/material.dart';

class DocumentosModel extends FlutterFlowModel<DocumentosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for buscarCarpeta widget.
  FocusNode? buscarCarpetaFocusNode;
  TextEditingController? buscarCarpetaTextController;
  String? Function(BuildContext, String?)? buscarCarpetaTextControllerValidator;
  bool requestCompleted = false;
  String? requestLastUniqueKey;

  /// Query cache managers for this widget.

  final _documentosManager = FutureRequestManager<List<CarpetasRow>>();
  Future<List<CarpetasRow>> documentos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CarpetasRow>> Function() requestFn,
  }) =>
      _documentosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDocumentosCache() => _documentosManager.clear();
  void clearDocumentosCacheKey(String? uniqueKey) =>
      _documentosManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarCarpetaFocusNode?.dispose();
    buscarCarpetaTextController?.dispose();

    /// Dispose query cache managers for this widget.

    clearDocumentosCache();
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
