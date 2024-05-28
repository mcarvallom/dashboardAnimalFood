import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reembolsar_pago_widget.dart' show ReembolsarPagoWidget;
import 'package:flutter/material.dart';

class ReembolsarPagoModel extends FlutterFlowModel<ReembolsarPagoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'idPago requerido';
    }

    return null;
  }

  // Stores action output result for [Custom Action - tranKey] action in Button widget.
  String? tranKey;
  // Stores action output result for [Custom Action - nonceEncriptado] action in Button widget.
  String? nonceEncriptado;
  // Stores action output result for [Backend Call - API (Reembolso)] action in Button widget.
  ApiCallResponse? apiReembolso;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
