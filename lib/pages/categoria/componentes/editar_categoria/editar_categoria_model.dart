import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_categoria_widget.dart' show EditarCategoriaWidget;
import 'package:flutter/material.dart';

class EditarCategoriaModel extends FlutterFlowModel<EditarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre es requerido';
    }

    return null;
  }

  bool isDataUploading_editarimgCategorialocal = false;
  FFUploadedFile uploadedLocalFile_editarimgCategorialocal =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (subirmedia)] action in Container widget.
  ApiCallResponse? editarimgCategoria;

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();
  }
}
