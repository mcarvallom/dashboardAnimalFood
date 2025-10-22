import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'crear_usuario_widget.dart' show CrearUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CrearUsuarioModel extends FlutterFlowModel<CrearUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre cliente es requerido';
    }

    return null;
  }

  // State field(s) for apellidousuario widget.
  FocusNode? apellidousuarioFocusNode;
  TextEditingController? apellidousuarioTextController;
  String? Function(BuildContext, String?)?
      apellidousuarioTextControllerValidator;
  String? _apellidousuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Apellido cliente es requerido';
    }

    return null;
  }

  // State field(s) for run widget.
  FocusNode? runFocusNode;
  TextEditingController? runTextController;
  late MaskTextInputFormatter runMask;
  String? Function(BuildContext, String?)? runTextControllerValidator;
  String? _runTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Run es requerido';
    }

    return null;
  }

  // State field(s) for dv widget.
  FocusNode? dvFocusNode;
  TextEditingController? dvTextController;
  String? Function(BuildContext, String?)? dvTextControllerValidator;
  String? _dvTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Digito verificador es requerido';
    }

    return null;
  }

  // State field(s) for direccion widget.
  FocusNode? direccionFocusNode;
  TextEditingController? direccionTextController;
  String? Function(BuildContext, String?)? direccionTextControllerValidator;
  String? _direccionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Dirección es requerido';
    }

    return null;
  }

  // State field(s) for ciudad widget.
  int? ciudadValue;
  FormFieldController<int>? ciudadValueController;
  // State field(s) for numcontacto widget.
  FocusNode? numcontactoFocusNode;
  TextEditingController? numcontactoTextController;
  late MaskTextInputFormatter numcontactoMask;
  String? Function(BuildContext, String?)? numcontactoTextControllerValidator;
  String? _numcontactoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Número contacto es requerido';
    }

    return null;
  }

  // State field(s) for correo widget.
  FocusNode? correoFocusNode;
  TextEditingController? correoTextController;
  String? Function(BuildContext, String?)? correoTextControllerValidator;
  String? _correoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Correo electrónico es requerido';
    }

    return null;
  }

  // State field(s) for Contrasea widget.
  FocusNode? contraseaFocusNode;
  TextEditingController? contraseaTextController;
  String? Function(BuildContext, String?)? contraseaTextControllerValidator;
  String? _contraseaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Contraseña es requerida';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (crear usuario Supabase auth)] action in Button widget.
  ApiCallResponse? crearusuario;

  /// Query cache managers for this widget.

  final _ciudadesManager = FutureRequestManager<List<CiudadRow>>();
  Future<List<CiudadRow>> ciudades({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CiudadRow>> Function() requestFn,
  }) =>
      _ciudadesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCiudadesCache() => _ciudadesManager.clear();
  void clearCiudadesCacheKey(String? uniqueKey) =>
      _ciudadesManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    apellidousuarioTextControllerValidator =
        _apellidousuarioTextControllerValidator;
    runTextControllerValidator = _runTextControllerValidator;
    dvTextControllerValidator = _dvTextControllerValidator;
    direccionTextControllerValidator = _direccionTextControllerValidator;
    numcontactoTextControllerValidator = _numcontactoTextControllerValidator;
    correoTextControllerValidator = _correoTextControllerValidator;
    contraseaTextControllerValidator = _contraseaTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    apellidousuarioFocusNode?.dispose();
    apellidousuarioTextController?.dispose();

    runFocusNode?.dispose();
    runTextController?.dispose();

    dvFocusNode?.dispose();
    dvTextController?.dispose();

    direccionFocusNode?.dispose();
    direccionTextController?.dispose();

    numcontactoFocusNode?.dispose();
    numcontactoTextController?.dispose();

    correoFocusNode?.dispose();
    correoTextController?.dispose();

    contraseaFocusNode?.dispose();
    contraseaTextController?.dispose();

    /// Dispose query cache managers for this widget.

    clearCiudadesCache();
  }
}
