import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'iniciar_sesion_widget.dart' show IniciarSesionWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IniciarSesionModel extends FlutterFlowModel<IniciarSesionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddress_Loginn widget.
  FocusNode? emailAddressLoginnFocusNode;
  TextEditingController? emailAddressLoginnController;
  String? Function(BuildContext, String?)?
      emailAddressLoginnControllerValidator;
  // State field(s) for password_Loginn widget.
  FocusNode? passwordLoginnFocusNode;
  TextEditingController? passwordLoginnController;
  late bool passwordLoginnVisibility;
  String? Function(BuildContext, String?)? passwordLoginnControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginnVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    emailAddressLoginnFocusNode?.dispose();
    emailAddressLoginnController?.dispose();

    passwordLoginnFocusNode?.dispose();
    passwordLoginnController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
