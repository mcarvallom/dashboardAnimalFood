import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/pedidos/crear_producto_orden_p_c/crear_producto_orden_p_c_widget.dart';
import 'crearorden_p_c_widget.dart' show CrearordenPCWidget;
import 'package:flutter/material.dart';

class CrearordenPCModel extends FlutterFlowModel<CrearordenPCWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for crearProductoOrdenPC component.
  late CrearProductoOrdenPCModel crearProductoOrdenPCModel;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsuarioRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    crearProductoOrdenPCModel =
        createModel(context, () => CrearProductoOrdenPCModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    crearProductoOrdenPCModel.dispose();
    textFieldFocusNode?.dispose();
  }
}
