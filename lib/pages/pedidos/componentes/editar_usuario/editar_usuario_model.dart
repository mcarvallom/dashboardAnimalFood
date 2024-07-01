import '/flutter_flow/flutter_flow_util.dart';
import 'editar_usuario_widget.dart' show EditarUsuarioWidget;
import 'package:flutter/material.dart';

class EditarUsuarioModel extends FlutterFlowModel<EditarUsuarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  // State field(s) for run widget.
  FocusNode? runFocusNode;
  TextEditingController? runTextController;
  String? Function(BuildContext, String?)? runTextControllerValidator;
  // State field(s) for dv widget.
  FocusNode? dvFocusNode;
  TextEditingController? dvTextController;
  String? Function(BuildContext, String?)? dvTextControllerValidator;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode1;
  TextEditingController? projectNameTextController1;
  String? Function(BuildContext, String?)? projectNameTextController1Validator;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode2;
  TextEditingController? projectNameTextController2;
  String? Function(BuildContext, String?)? projectNameTextController2Validator;
  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode3;
  TextEditingController? projectNameTextController3;
  String? Function(BuildContext, String?)? projectNameTextController3Validator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for nombreEmpresa widget.
  FocusNode? nombreEmpresaFocusNode;
  TextEditingController? nombreEmpresaTextController;
  String? Function(BuildContext, String?)? nombreEmpresaTextControllerValidator;
  // State field(s) for runEmpresa widget.
  FocusNode? runEmpresaFocusNode;
  TextEditingController? runEmpresaTextController;
  String? Function(BuildContext, String?)? runEmpresaTextControllerValidator;
  // State field(s) for dvEmpresa widget.
  FocusNode? dvEmpresaFocusNode;
  TextEditingController? dvEmpresaTextController;
  String? Function(BuildContext, String?)? dvEmpresaTextControllerValidator;
  // State field(s) for direccionEmpresa widget.
  FocusNode? direccionEmpresaFocusNode;
  TextEditingController? direccionEmpresaTextController;
  String? Function(BuildContext, String?)?
      direccionEmpresaTextControllerValidator;
  // State field(s) for celularEmpresa widget.
  FocusNode? celularEmpresaFocusNode;
  TextEditingController? celularEmpresaTextController;
  String? Function(BuildContext, String?)?
      celularEmpresaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    apellidoFocusNode?.dispose();
    apellidoTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();

    runFocusNode?.dispose();
    runTextController?.dispose();

    dvFocusNode?.dispose();
    dvTextController?.dispose();

    projectNameFocusNode1?.dispose();
    projectNameTextController1?.dispose();

    projectNameFocusNode2?.dispose();
    projectNameTextController2?.dispose();

    projectNameFocusNode3?.dispose();
    projectNameTextController3?.dispose();

    nombreEmpresaFocusNode?.dispose();
    nombreEmpresaTextController?.dispose();

    runEmpresaFocusNode?.dispose();
    runEmpresaTextController?.dispose();

    dvEmpresaFocusNode?.dispose();
    dvEmpresaTextController?.dispose();

    direccionEmpresaFocusNode?.dispose();
    direccionEmpresaTextController?.dispose();

    celularEmpresaFocusNode?.dispose();
    celularEmpresaTextController?.dispose();
  }
}
