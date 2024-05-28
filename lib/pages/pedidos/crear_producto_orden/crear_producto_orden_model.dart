import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'crear_producto_orden_widget.dart' show CrearProductoOrdenWidget;
import 'package:flutter/material.dart';

class CrearProductoOrdenModel
    extends FlutterFlowModel<CrearProductoOrdenWidget> {
  ///  Local state fields for this component.

  DocumentReference? producto;

  DocumentReference? variacion;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<ProductoRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProductoRecord? productoRead;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  VariacionRecord? variacionRead;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectedItemsRecord? selectedItemss;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  ProductoRecord? productoReadd;
  // Stores action output result for [Backend Call - Read Document] action in Button widget.
  VariacionRecord? variacionReadd;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectedItemsRecord? selectedItems;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
