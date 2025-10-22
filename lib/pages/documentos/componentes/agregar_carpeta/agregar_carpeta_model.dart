import '/flutter_flow/flutter_flow_util.dart';
import 'agregar_carpeta_widget.dart' show AgregarCarpetaWidget;
import 'package:flutter/material.dart';

class AgregarCarpetaModel extends FlutterFlowModel<AgregarCarpetaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un nombre';
    }

    return null;
  }

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
