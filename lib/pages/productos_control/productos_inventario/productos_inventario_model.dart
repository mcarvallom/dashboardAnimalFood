import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/componentes/top_escritorio/top_escritorio_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import 'productos_inventario_widget.dart' show ProductosInventarioWidget;
import 'package:flutter/material.dart';

class ProductosInventarioModel
    extends FlutterFlowModel<ProductosInventarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopEscritorio component.
  late TopEscritorioModel topEscritorioModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<ProductoRecord> simpleSearchResults1 = [];
  // Model for topMovilVendedor component.
  late TopMovilVendedorModel topMovilVendedorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<ProductoRecord> simpleSearchResults2 = [];

  @override
  void initState(BuildContext context) {
    topEscritorioModel = createModel(context, () => TopEscritorioModel());
    topMovilVendedorModel = createModel(context, () => TopMovilVendedorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topEscritorioModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    topMovilVendedorModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
