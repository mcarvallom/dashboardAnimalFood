import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subir_evidencia_entrega_fallida_widget.dart'
    show SubirEvidenciaEntregaFallidaWidget;
import 'package:flutter/material.dart';

class SubirEvidenciaEntregaFallidaModel
    extends FlutterFlowModel<SubirEvidenciaEntregaFallidaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - API (Emails)] action in Button widget.
  ApiCallResponse? apiResultrjf10;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
