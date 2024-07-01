import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'crear_producto_orden_widget.dart' show CrearProductoOrdenWidget;
import 'package:flutter/material.dart';

class CrearProductoOrdenModel
    extends FlutterFlowModel<CrearProductoOrdenWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<ProductoRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Cantidad requerida';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Read Document] action in productoVariacion widget.
  ProductoRecord? productoCrearV;
  // Stores action output result for [Backend Call - Read Document] action in productoVariacion widget.
  VariacionRecord? variacionCrearV;
  // Stores action output result for [Backend Call - Create Document] action in productoVariacion widget.
  SelectedItemsRecord? selectedItemV;
  // Stores action output result for [Backend Call - Read Document] action in productoVariacion widget.
  ProductoRecord? productoCrear;
  // Stores action output result for [Backend Call - Create Document] action in productoVariacion widget.
  SelectedItemsRecord? selectedItem;

  @override
  void initState(BuildContext context) {
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
