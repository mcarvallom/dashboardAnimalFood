import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'formulario_reporte_diario_widget.dart'
    show FormularioReporteDiarioWidget;
import 'package:flutter/material.dart';

class FormularioReporteDiarioModel
    extends FlutterFlowModel<FormularioReporteDiarioWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for totalmaquinatxt widget.
  FocusNode? totalmaquinatxtFocusNode;
  TextEditingController? totalmaquinatxtTextController;
  String? Function(BuildContext, String?)?
      totalmaquinatxtTextControllerValidator;
  // State field(s) for totalefectivotxt widget.
  FocusNode? totalefectivotxtFocusNode1;
  TextEditingController? totalefectivotxtTextController1;
  String? Function(BuildContext, String?)?
      totalefectivotxtTextController1Validator;
  // State field(s) for totalefectivotxt widget.
  FocusNode? totalefectivotxtFocusNode2;
  TextEditingController? totalefectivotxtTextController2;
  String? Function(BuildContext, String?)?
      totalefectivotxtTextController2Validator;
  // State field(s) for totalefectivotxt widget.
  FocusNode? totalefectivotxtFocusNode3;
  TextEditingController? totalefectivotxtTextController3;
  String? Function(BuildContext, String?)?
      totalefectivotxtTextController3Validator;
  // State field(s) for totalefectivotxt widget.
  FocusNode? totalefectivotxtFocusNode4;
  TextEditingController? totalefectivotxtTextController4;
  String? Function(BuildContext, String?)?
      totalefectivotxtTextController4Validator;
  // State field(s) for totalefectivotxt widget.
  FocusNode? totalefectivotxtFocusNode5;
  TextEditingController? totalefectivotxtTextController5;
  String? Function(BuildContext, String?)?
      totalefectivotxtTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    totalmaquinatxtFocusNode?.dispose();
    totalmaquinatxtTextController?.dispose();

    totalefectivotxtFocusNode1?.dispose();
    totalefectivotxtTextController1?.dispose();

    totalefectivotxtFocusNode2?.dispose();
    totalefectivotxtTextController2?.dispose();

    totalefectivotxtFocusNode3?.dispose();
    totalefectivotxtTextController3?.dispose();

    totalefectivotxtFocusNode4?.dispose();
    totalefectivotxtTextController4?.dispose();

    totalefectivotxtFocusNode5?.dispose();
    totalefectivotxtTextController5?.dispose();
  }
}
