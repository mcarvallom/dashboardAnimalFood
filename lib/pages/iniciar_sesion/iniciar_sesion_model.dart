import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'iniciar_sesion_widget.dart' show IniciarSesionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
