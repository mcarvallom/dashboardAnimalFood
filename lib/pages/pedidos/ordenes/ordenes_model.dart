import '/backend/backend.dart';
import '/components/barra_menu2_widget.dart';
import '/components/barra_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/componentes/top_movil/top_movil_widget.dart';
import '/pages/componentes/top_movil_vendedor/top_movil_vendedor_widget.dart';
import 'ordenes_widget.dart' show OrdenesWidget;
import 'package:flutter/material.dart';

class OrdenesModel extends FlutterFlowModel<OrdenesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for barraMenu component.
  late BarraMenuModel barraMenuModel;
  // Model for barraMenu2 component.
  late BarraMenu2Model barraMenu2Model;
  // Model for topMovil component.
  late TopMovilModel topMovilModel;
  // Model for topMovilVendedor component.
  late TopMovilVendedorModel topMovilVendedorModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<OrderRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<OrderRecord>();

  @override
  void initState(BuildContext context) {
    barraMenuModel = createModel(context, () => BarraMenuModel());
    barraMenu2Model = createModel(context, () => BarraMenu2Model());
    topMovilModel = createModel(context, () => TopMovilModel());
    topMovilVendedorModel = createModel(context, () => TopMovilVendedorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraMenuModel.dispose();
    barraMenu2Model.dispose();
    topMovilModel.dispose();
    topMovilVendedorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
