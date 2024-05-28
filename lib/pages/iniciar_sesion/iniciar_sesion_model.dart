import '/flutter_flow/flutter_flow_util.dart';
import 'iniciar_sesion_widget.dart' show IniciarSesionWidget;
import 'package:flutter/material.dart';

class IniciarSesionModel extends FlutterFlowModel<IniciarSesionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress_Loginn widget.
  FocusNode? emailAddressLoginnFocusNode;
  TextEditingController? emailAddressLoginnTextController;
  String? Function(BuildContext, String?)?
      emailAddressLoginnTextControllerValidator;
  // State field(s) for password_Loginn widget.
  FocusNode? passwordLoginnFocusNode;
  TextEditingController? passwordLoginnTextController;
  late bool passwordLoginnVisibility;
  String? Function(BuildContext, String?)?
      passwordLoginnTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordLoginnVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressLoginnFocusNode?.dispose();
    emailAddressLoginnTextController?.dispose();

    passwordLoginnFocusNode?.dispose();
    passwordLoginnTextController?.dispose();
  }
}
