import '/flutter_flow/flutter_flow_util.dart';
import 'soporte_widget.dart' show SoporteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SoporteModel extends FlutterFlowModel<SoporteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre requerido';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  String? _emailTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email requerido';
    }

    return null;
  }

  // State field(s) for rut widget.
  FocusNode? rutFocusNode;
  TextEditingController? rutTextController;
  final rutMask = MaskTextInputFormatter(mask: '########');
  String? Function(BuildContext, String?)? rutTextControllerValidator;
  String? _rutTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Run requerido';
    }

    return null;
  }

  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  String? _numeroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Número celular requerido';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  String? _emailTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mensaje requerido';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    emailTextController1Validator = _emailTextController1Validator;
    rutTextControllerValidator = _rutTextControllerValidator;
    numeroTextControllerValidator = _numeroTextControllerValidator;
    emailTextController2Validator = _emailTextController2Validator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    rutFocusNode?.dispose();
    rutTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();
  }
}
