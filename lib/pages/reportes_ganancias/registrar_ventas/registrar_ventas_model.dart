import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registrar_ventas_widget.dart' show RegistrarVentasWidget;
import 'package:flutter/material.dart';

class RegistrarVentasModel extends FlutterFlowModel<RegistrarVentasWidget> {
  ///  Local state fields for this page.

  List<VentasDiariasStruct> reporte = [];
  void addToReporte(VentasDiariasStruct item) => reporte.add(item);
  void removeFromReporte(VentasDiariasStruct item) => reporte.remove(item);
  void removeAtIndexFromReporte(int index) => reporte.removeAt(index);
  void insertAtIndexInReporte(int index, VentasDiariasStruct item) =>
      reporte.insert(index, item);
  void updateReporteAtIndex(
          int index, Function(VentasDiariasStruct) updateFn) =>
      reporte[index] = updateFn(reporte[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for tienda1 widget.
  FormFieldController<List<String>>? tienda1ValueController;
  String? get tienda1Value => tienda1ValueController?.value?.firstOrNull;
  set tienda1Value(String? val) =>
      tienda1ValueController?.value = val != null ? [val] : [];
  // State field(s) for totalmaquinatxt1 widget.
  FocusNode? totalmaquinatxt1FocusNode;
  TextEditingController? totalmaquinatxt1TextController;
  String? Function(BuildContext, String?)?
      totalmaquinatxt1TextControllerValidator;
  // State field(s) for codigoGetnettxt1 widget.
  FocusNode? codigoGetnettxt1FocusNode;
  TextEditingController? codigoGetnettxt1TextController;
  String? Function(BuildContext, String?)?
      codigoGetnettxt1TextControllerValidator;
  // State field(s) for totalefectivotxt1 widget.
  FocusNode? totalefectivotxt1FocusNode;
  TextEditingController? totalefectivotxt1TextController;
  String? Function(BuildContext, String?)?
      totalefectivotxt1TextControllerValidator;
  // State field(s) for totalgastotxt1 widget.
  FocusNode? totalgastotxt1FocusNode;
  TextEditingController? totalgastotxt1TextController;
  String? Function(BuildContext, String?)?
      totalgastotxt1TextControllerValidator;
  // State field(s) for detalleGastotxt1 widget.
  FocusNode? detalleGastotxt1FocusNode;
  TextEditingController? detalleGastotxt1TextController;
  String? Function(BuildContext, String?)?
      detalleGastotxt1TextControllerValidator;
  // State field(s) for totalpeajetxt1 widget.
  FocusNode? totalpeajetxt1FocusNode;
  TextEditingController? totalpeajetxt1TextController;
  String? Function(BuildContext, String?)?
      totalpeajetxt1TextControllerValidator;
  // State field(s) for totalpetroleotxt1 widget.
  FocusNode? totalpetroleotxt1FocusNode;
  TextEditingController? totalpetroleotxt1TextController;
  String? Function(BuildContext, String?)?
      totalpetroleotxt1TextControllerValidator;
  // State field(s) for tienda2 widget.
  FormFieldController<List<String>>? tienda2ValueController;
  String? get tienda2Value => tienda2ValueController?.value?.firstOrNull;
  set tienda2Value(String? val) =>
      tienda2ValueController?.value = val != null ? [val] : [];
  // State field(s) for totalmaquinatxt2 widget.
  FocusNode? totalmaquinatxt2FocusNode;
  TextEditingController? totalmaquinatxt2TextController;
  String? Function(BuildContext, String?)?
      totalmaquinatxt2TextControllerValidator;
  // State field(s) for codigoGetnettxt2 widget.
  FocusNode? codigoGetnettxt2FocusNode;
  TextEditingController? codigoGetnettxt2TextController;
  String? Function(BuildContext, String?)?
      codigoGetnettxt2TextControllerValidator;
  // State field(s) for totalefectivotxt2 widget.
  FocusNode? totalefectivotxt2FocusNode;
  TextEditingController? totalefectivotxt2TextController;
  String? Function(BuildContext, String?)?
      totalefectivotxt2TextControllerValidator;
  // State field(s) for totalGastotxt2 widget.
  FocusNode? totalGastotxt2FocusNode;
  TextEditingController? totalGastotxt2TextController;
  String? Function(BuildContext, String?)?
      totalGastotxt2TextControllerValidator;
  // State field(s) for totalPetroleotxt2 widget.
  FocusNode? totalPetroleotxt2FocusNode1;
  TextEditingController? totalPetroleotxt2TextController1;
  String? Function(BuildContext, String?)?
      totalPetroleotxt2TextController1Validator;
  // State field(s) for totalPeajetxt2 widget.
  FocusNode? totalPeajetxt2FocusNode;
  TextEditingController? totalPeajetxt2TextController;
  String? Function(BuildContext, String?)?
      totalPeajetxt2TextControllerValidator;
  // State field(s) for totalPetroleotxt2 widget.
  FocusNode? totalPetroleotxt2FocusNode2;
  TextEditingController? totalPetroleotxt2TextController2;
  String? Function(BuildContext, String?)?
      totalPetroleotxt2TextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    totalmaquinatxt1FocusNode?.dispose();
    totalmaquinatxt1TextController?.dispose();

    codigoGetnettxt1FocusNode?.dispose();
    codigoGetnettxt1TextController?.dispose();

    totalefectivotxt1FocusNode?.dispose();
    totalefectivotxt1TextController?.dispose();

    totalgastotxt1FocusNode?.dispose();
    totalgastotxt1TextController?.dispose();

    detalleGastotxt1FocusNode?.dispose();
    detalleGastotxt1TextController?.dispose();

    totalpeajetxt1FocusNode?.dispose();
    totalpeajetxt1TextController?.dispose();

    totalpetroleotxt1FocusNode?.dispose();
    totalpetroleotxt1TextController?.dispose();

    totalmaquinatxt2FocusNode?.dispose();
    totalmaquinatxt2TextController?.dispose();

    codigoGetnettxt2FocusNode?.dispose();
    codigoGetnettxt2TextController?.dispose();

    totalefectivotxt2FocusNode?.dispose();
    totalefectivotxt2TextController?.dispose();

    totalGastotxt2FocusNode?.dispose();
    totalGastotxt2TextController?.dispose();

    totalPetroleotxt2FocusNode1?.dispose();
    totalPetroleotxt2TextController1?.dispose();

    totalPeajetxt2FocusNode?.dispose();
    totalPeajetxt2TextController?.dispose();

    totalPetroleotxt2FocusNode2?.dispose();
    totalPetroleotxt2TextController2?.dispose();
  }
}
