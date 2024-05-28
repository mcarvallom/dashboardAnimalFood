import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pedidos_delivery_widget.dart' show PedidosDeliveryWidget;
import 'package:flutter/material.dart';

class PedidosDeliveryModel extends FlutterFlowModel<PedidosDeliveryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // Stores action output result for [Backend Call - API (Emails)] action in Container widget.
  ApiCallResponse? apiResultrjf5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
