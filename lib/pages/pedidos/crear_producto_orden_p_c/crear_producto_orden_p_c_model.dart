import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'crear_producto_orden_p_c_widget.dart' show CrearProductoOrdenPCWidget;
import 'package:flutter/material.dart';

class CrearProductoOrdenPCModel
    extends FlutterFlowModel<CrearProductoOrdenPCWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductoRecord> simpleSearchResults = [];
  // Stores action output result for [Firestore Query - Query a collection] action in TextField widget.
  ProductoRecord? producto;
  // Stores action output result for [Firestore Query - Query a collection] action in TextField widget.
  VariacionRecord? variacion;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  SelectedItemsRecord? selectedItemCodigo;
  // Stores action output result for [Backend Call - Read Document] action in TextField widget.
  ProductoRecord? productoVariacion;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  SelectedItemsRecord? selectedItemVCodigo;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  ProductoRecord? productoCrearV;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  VariacionRecord? variacionCrearV;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SelectedItemsRecord? selectedItemV;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  ProductoRecord? productoCrear;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  SelectedItemsRecord? selectedItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
