import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'contenido_carpeta_widget.dart' show ContenidoCarpetaWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ContenidoCarpetaModel extends FlutterFlowModel<ContenidoCarpetaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for dia widget.
  int? diaValue;
  FormFieldController<int>? diaValueController;
  bool requestCompleted2 = false;
  String? requestLastUniqueKey2;
  // State field(s) for SeleccionarMes widget.
  int? seleccionarMesValue;
  FormFieldController<int>? seleccionarMesValueController;
  // State field(s) for SeleccionarAnnio widget.
  int? seleccionarAnnioValue;
  FormFieldController<int>? seleccionarAnnioValueController;
  bool requestCompleted1 = false;
  String? requestLastUniqueKey1;

  /// Query cache managers for this widget.

  final _contenidoCarpetaManager =
      FutureRequestManager<List<ArchivosCarpetaRow>>();
  Future<List<ArchivosCarpetaRow>> contenidoCarpeta({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ArchivosCarpetaRow>> Function() requestFn,
  }) =>
      _contenidoCarpetaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearContenidoCarpetaCache() => _contenidoCarpetaManager.clear();
  void clearContenidoCarpetaCacheKey(String? uniqueKey) =>
      _contenidoCarpetaManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearContenidoCarpetaCache();
  }

  /// Additional helper methods.
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
}
