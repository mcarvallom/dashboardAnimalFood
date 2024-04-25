import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'status_pedido_widget.dart' show StatusPedidoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StatusPedidoModel extends FlutterFlowModel<StatusPedidoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (Emails)] action in DropDown widget.
  ApiCallResponse? apiResultrjf1;
  // Stores action output result for [Backend Call - API (Emails)] action in DropDown widget.
  ApiCallResponse? apiResultrjf2;
  // Stores action output result for [Backend Call - API (Emails)] action in DropDown widget.
  ApiCallResponse? apiResultrjf3;
  // Stores action output result for [Backend Call - API (Emails)] action in DropDown widget.
  ApiCallResponse? apiResultrjf4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
